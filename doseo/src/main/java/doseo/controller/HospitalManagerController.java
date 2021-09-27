package doseo.controller;

import java.util.List;
import java.util.Random;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import doseo.command.DoctorCommand;
import doseo.command.JoinDoctorCommand;
import doseo.command.MemberCommand;
import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.JoinDoctor;
import doseo.model.Review;
import doseo.service.dsFacade;
@Controller
public class HospitalManagerController {
	
	@Autowired
	private dsFacade ds;
	
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}
	
	//의사 id 랜덤 발생 
	public String rand_id(HttpServletRequest request) {
		int rslt = -1;
		do {
			Random random = new Random();//난수 생성
			String rand_num = String.format("%05d", random.nextInt(99999));//1->00001로 자릿수 변환
			String hos_code = ((Hospital) request.getSession().getAttribute("sessionForUser")).getHos_code();//병원 코드 가져오기
			String rand_id = hos_code.concat(rand_num);//임의로 아이디 만들기
			System.out.println("random id22 : " + rand_id);
			rslt = ds.doc_idCheck(rand_id);
			if(rslt == 0) {
				return rand_id;
			}
		}while(rslt == 0);
		return null;
	}
	
	//병원 관리자 메인페이지
	@RequestMapping("/hospital/manager_main")
	public String goToAdminMain(HttpServletRequest request, Model model) {	
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		List<Doctor> doclist = ds.getDocList(hos_id);
		model.addAttribute("doclist", doclist);
		return "hos_manager/manager_main";
	}
	
	//병원 로그아웃
	@GetMapping("/hospital/manager_logout")
	public String logout(HttpSession session) throws Exception {
		session.removeAttribute("sessionForUser");
		session.invalidate();
		
		return "redirect:/index";
	}
	
	//의사 정보 관리 페이지로 이동 0828 - 서연
	@GetMapping("/hospital/manager_doctorInfo")
	public String goDoctorInfo(HttpServletRequest request, Model model) {
		return "hos_manager/manager_doctorInfo";
	}
	
	// 지원 언어 추가하기 0828 - 서연
	
	//각 과별 의사의 리스트
	@RequestMapping(value="/hospital/searchDocList", method = RequestMethod.GET)
	public String getDoctorList(HttpServletRequest request, HttpSession session,
			@RequestParam(value="deptName")String deptName, Model model) {
		//String doc_id = ((Doctor) request.getSession().getAttribute("sessionForUser")).getDoc_id();
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		
		//System.out.println("Check :" + hos_id);
		
		//의사리스트가져오기
		List<Doctor> doclist = this.ds.admin_getDocList(deptName, hos_id);
		System.out.println("Test::");
		for (Doctor s : doclist) {
			System.out.println(s.getDoc_name());
		}
		model.addAttribute("doclist", doclist);
		model.addAttribute("deptName", deptName);
		int total = doclist.size();
		model.addAttribute("total", total);
		
		//의사 등록 시 사용할 random id
		String rand_id = rand_id(request);//함수 호출
		model.addAttribute("rand_id", rand_id);
		System.out.println("random id : " + rand_id);
		
		//리뷰리스트 가져오기
		//List<Review> reviewlist = this.ds.getReviewByHosId(hos_id);
		//model.addAttribute("reviewlist", reviewlist);
		
		//전체 평점 불러오기
		//double avg_rate = this.ds.getAVGRate(hos_id);
		//model.addAttribute("avg_rate", avg_rate);
		
		return "hos_manager/manager_searchDocList";
	}
	
	
	//병원 관리자 페이지에서 의사 삭제
	@RequestMapping("/hospital/doctor_delete")
	public String deleteDoctor(HttpServletRequest request, HttpSession session,
			@RequestParam(value="deptName")String deptName, @RequestParam(value="doc_id")String doc_id, Model model) {
		ds.deleteDoctor(doc_id);//삭제
		
		//다시 삭제가 반영된 리스트를 다시 나타내기 위해
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		List<Doctor> doclist = this.ds.admin_getDocList(deptName, hos_id);
		
		model.addAttribute("doclist", doclist);
		model.addAttribute("deptName", deptName);
		int total = doclist.size();
		model.addAttribute("total", total);
		
		//새 아이디 생성
		String new_rand_id = rand_id(request);//함수 호출
		model.addAttribute("new_rand_id", new_rand_id);
		System.out.println("new random id : " + new_rand_id);
		
		return "hos_manager/manager_searchDocList";
	}
	
	//병원 관리자 페이지에서 의사 정보 추가 	
	@RequestMapping(value="/hospital/doctor_register", method = {RequestMethod.GET, RequestMethod.POST})
	public String insertDoctor(HttpServletRequest request, HttpSession session, 
			@RequestParam(value="doc_login_id")String doc_login_id,//random pwd는 1111로 고정
			@RequestParam(value="deptName") String deptName, Model model, JoinDoctorCommand dc) {
		
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		
		//의사 정보 추가
		JoinDoctor newDoctor = new JoinDoctor( //##################생성자인자가 6개인 게 이미 있음,,,
				//doc_id x
				dc.getDoc_name(),
				doc_login_id,
				"1111",//pwd 기본
				ds.getDeptId(deptName, hos_id),//dept id
				hos_id,//hos id
				dc.getSpecialty()
				);
		ds.insertDoctor(newDoctor);
		
		//다시 의사 추가가 반영된 리스트를 다시 나타내기 위해 : 의사 리스트 + 새 랜덤아이디
		List<Doctor> doclist = this.ds.admin_getDocList(deptName, hos_id);
		model.addAttribute("doclist", doclist);
		model.addAttribute("deptName", deptName);
		int total = doclist.size();
		model.addAttribute("total", total);
		
		String new_rand_id = rand_id(request);//함수 호출
		model.addAttribute("new_rand_id", new_rand_id);
		System.out.println("new random id : " + new_rand_id);
	
		return "hos_manager/manager_searchDocList";
	}
	
	/* validator사용하는 경우
	 * @ModelAttribute("joinDoctor")
	public JoinDoctorCommand formBackingObject(HttpServletRequest request) throws Exception {
		
		return new JoinDoctorCommand();
	}
	
	@PostMapping("/hospital/doctor_register")
	public String insertDoctor(HttpServletRequest request, HttpSession session, 
			@ModelAttribute("joinDoctor") JoinDoctorCommand doctorCommand, Model model,
			Errors errors) {
		//Doctor doctor = 
		
		return "hos_manager/manager_searchDocList";
	}
	 */
		
	//예약 내역 리스트 ####할것
	@RequestMapping("/hospital/manager_appointment")
	public String manangerApp() {
		return "hos_manager/manager_appointment";
	}
	
	//리뷰 메인 페이지
	@RequestMapping("/hospital/manager_review")
	public String managerReview(HttpServletRequest request, HttpSession session, Model model) {
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		List<Review> revlist = ds.getReviewByHosId(hos_id);
		int total = revlist.size();
		double rating = ds.getAVGRate(hos_id);
		
		model.addAttribute("revlist", revlist);
		model.addAttribute("total", total);
		model.addAttribute("rating", rating);
		return "hos_manager/manager_review";
	}
	
	//리뷰 상세 페이지
	@RequestMapping("/hospital/manager_reviewDetail")
	public String goReviewDetail(HttpServletRequest request, HttpSession session, 
			@RequestParam(value="review_id")String review_id, Model model) {
		String hos_id = ((Hospital) request.getSession().getAttribute("sessionForUser")).getId();
		Review reviewDetail = ds.getReviewDetailById(hos_id, review_id);
		model.addAttribute("rev", reviewDetail);
		
		return "hos_manager/manager_reviewDetail";
	}
}
