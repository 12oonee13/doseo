package doseo.controller;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import doseo.command.AppointmentCommand;
import doseo.model.Appointment;
import doseo.model.Member;
import doseo.service.dsFacade;

@Controller
public class AppointmentController {
	@Autowired
	private dsFacade ds;
	
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}
	
	
	@GetMapping("/member/appointment_list")
	public String toAppointment_list(HttpServletRequest request, Model model) throws Exception{
		
		Member user = (Member)request.getSession().getAttribute("sessionForUser");
		String userId = user.getId();
		
		List<Appointment> appointment_list = new ArrayList<>();
		appointment_list = ds.getAppointment_list(userId);
		
		
		//about date
		SimpleDateFormat dateFormat = new SimpleDateFormat ( "yyyy-MM-dd HH:mm");
		Date today = dateFormat.parse(dateFormat.format(new Date()));
		
		for(Appointment appointment : appointment_list) {
			Date compareDate = dateFormat.parse(appointment.getAp_date() + " " + appointment.getAp_time());
			 if(compareDate.after(today)){ //예약날짜가 현재시간보다 빠르면
	                appointment.setCompareDate("after");
	         }
			 else
				 appointment.setCompareDate("before");
		}
		
		
		model.addAttribute("ap_list", appointment_list);

		return "member/appointment_list";
	}
	
	
	@GetMapping("/member/appointment_list_detail")
	public String toReview_detail(HttpServletRequest request, Model model) throws Exception {

		Appointment ap = ds.getAppointment(request.getParameter("ap_id"));

		// about date
		SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm");
		Date today = dateFormat.parse(dateFormat.format(new Date()));

		Date compareDate = dateFormat.parse(ap.getAp_date() + " " + ap.getAp_time());
		
		long diffMin = (compareDate.getTime() - today.getTime()) / 60000; //1440분 = 24시간
		
		if (diffMin < 1440) { // 예약날짜가 현재시간보다 빠르면
			ap.setCanBeDeleted("false");
			System.out.println("************예약날짜가 현재시간보다 빠름");
		} else
			ap.setCanBeDeleted("true");

		model.addAttribute("ap", ap);
		
		//1002 서연 추가 리뷰가 이미 존재하는지 여부
		int reviewExistCheck = ds.reviewExistCheck(request.getParameter("ap_id"));// 1이면 존재 0이면 없음
		model.addAttribute("reviewExistCheck", reviewExistCheck);

		return "member/appointment_list_detail";
	}
	
	
	@GetMapping("/member/appointment_delete")
	public String delete_appointment(HttpServletRequest request, Model model) {
		ds.deleteAppointment(request.getParameter("ap_id"));
		
		return "redirect:appointment_list";
	}
	//서연0715 병원선택 후 예약 폼으로 : 기본 개인정보, 선택 값(병원, 과)띄우기...?
	//이경우는 요일을 선택해서 보내는 경우로생각
	/*
	 * @RequestMapping("/member/appointmentForm") public String
	 * goAppointmentPage(@RequestParam(value="doc_id")String doc_id,
	 * 
	 * @RequestParam(value="hosName")String hosName,
	 * 
	 * @RequestParam(value="deptName")String deptName,
	 * 
	 * @RequestParam(value="day")String day,
	 * 
	 * @RequestParam(value="time")String time, Model model) { //병원 id 가져오기 String
	 * hos_id = ds.getHosId(hosName); //String dep_id = ds.getDeptId(deptName);
	 * model.addAttribute("hosName", hosName); model.addAttribute("deptName",
	 * deptName);
	 * 
	 * //날짜와 시간 model.addAttribute("day", day); System.out.println("day : " + day +
	 * ", time :" + time); model.addAttribute("time", time);
	 * 
	 * //해당 병원에서 지원하는 언어 목록 List<String> languages = new ArrayList<>(); languages =
	 * this.ds.getLangListByHosId(hos_id); System.out.println("******languages :");
	 * for (String s : languages) { System.out.println(s); }
	 * model.addAttribute("languages", languages);
	 * 
	 * return"/member/appointmentForm"; }
	 */
	
	//서연0803 수정 의사 정보를 추가
		@RequestMapping("/member/appointmentForm")
		public String goAppointmentPage(@RequestParam(value="doc_id")String doc_id,
				@RequestParam(value="docName")String docName,
				@RequestParam(value="hosName")String hosName,
				@RequestParam(value="deptName")String deptName, Model model) {
			//병원 id 가져오기 - 해당 병원이 지원하는 언어
			String hos_id = ds.getHosId(hosName);
			//String dep_id = ds.getDeptId(deptName);
			
			model.addAttribute("docName", docName);
			model.addAttribute("hosName", hosName);
			model.addAttribute("deptName", deptName);
			
			model.addAttribute("doc_id", doc_id);
			
			//해당 병원에서 지원하는 언어 목록
			List<String> languages = new ArrayList<>();
			languages = this.ds.getLangListByHosId(hos_id);
			System.out.println("******languages :");
			for (String s : languages) {	
				System.out.println(s);
			}
			model.addAttribute("languages", languages);
			
			return"/member/appointmentForm";
		}
		

	
	//서연0715 예약 폼에서 확인 창으로 넘김 8/5수정 doc_id추가 
	@RequestMapping(value="/member/appointmentConfirm", method= {RequestMethod.POST, RequestMethod.GET})
	public String goConfirmPage(@RequestParam(value="hosName")String hosName,
			@RequestParam(value="deptName")String deptName,
			@RequestParam(value="doc_id")String doc_id, HttpServletRequest request, HttpSession session, 
			Model model, AppointmentCommand ac) throws Exception {
		//new AppointmentValidator().validate(ac, result);
		//if (result.hasErrors()) {
	//		return "member/appointmentForm";
		//}
		//else {
		
			
				//SimpleDateFormat dtFormat = new SimpleDateFormat("yyyy/MM/dd"); 
				//SimpleDateFormat newDtFormat = new SimpleDateFormat("yy/MM/dd"); // String 타입을 Date 타입으로 변환 
				//Date formatDate = dtFormat.parse(ac.getDate()); // Date타입의 변수를 새롭게 지정한 포맷으로 변환 
				//String strNewDtFormat = newDtFormat.format(formatDate); 
				//System.out.println("포맷 전 : " + ac.getDate()); 
				//System.out.println("포맷 후 : " + strNewDtFormat);

				
				//SimpleDateFormat dateFormatParser = new SimpleDateFormat("yy/MM/dd");//검증할 날짜 포맷 설정
				//dateFormatParser.setLenient(false);//false일경우 처리시 입력한 값이 잘못된 형식일 시 오류가 발생
			
		//시간데이터 format yy/MM/dd
		String date = ac.getDate();
		System.out.printf("date : ", date);
		//java.util.Date oldDate = new SimpleDateFormat("yyyy/MM/dd").parse(s_date);//String to Date
		//String newDate = new SimpleDateFormat("yyyy-MM-dd").format(oldDate);//Date형식으로 String 값에 넣어줌
		java.sql.Date sqlDate = java.sql.Date.valueOf(date);
		
		
		//예약 내역 삽입
		//userId가져오기
		Member user = (Member)request.getSession().getAttribute("sessionForUser");
		String userId = user.getId();
		//String userId = "test";
		
		//병원, 진료과 id 가져오기 
		String hos_id = ds.getHosId(hosName);
		String dept_id = ds.getDeptId(deptName, hos_id);
		String time = date.trim() + " " + ac.getTime().trim(); 
		System.out.println("hos_id : " + hos_id);
		System.out.println("dept_id : " + dept_id);
		System.out.println("time : " + time);
		System.out.println("ac.getSelected_lang : " + ac.getSelected_language());
		System.out.println("userId : " + userId);
		System.out.println("ac.getMessage : " + ac.getMessage());
		
		Appointment appointment = new Appointment(
				sqlDate,
				time,
				ac.getSelected_language(),
				userId,
				hos_id,
				dept_id,
				ac.getMessage(),
				doc_id
		);
		ds.insertAppointment(appointment);
		System.out.println("성공");
		//model.addAttribute()성공...
		
		
		return "member/confirmation";
	}
	
	//닥터 스케줄 - 이미 예약된 것에 대한 시간 test
	/*
	 * @RequestMapping("/member/timelistTest") public String
	 * test(@RequestParam("selectedDate") String date,
	 * 
	 * @RequestParam("doc_id") String doc_id,
	 * 
	 * @RequestParam("selectedDay") String day, Model model) {
	 * 
	 * List<String> timelist = this.ds.getAvaliableTimeList(doc_id, day, date);
	 * model.addAttribute("timelist", timelist);
	 * 
	 * return "member/testoutput"; }
	 */
	
	//서연 0804
	//Ajax방식으로 json데이터를 만들어서 다시 view로 넘겨주는 메소드
	@ResponseBody	
	@RequestMapping(value="/member/ajax_getlist", method=RequestMethod.GET)
	public void AjaxView(HttpServletRequest request, HttpServletResponse response, @RequestParam("selectedDate") String date,
			@RequestParam("doc_id") String doc_id,
			@RequestParam("selectedDay") String day ) throws Exception {
		
		ArrayList<String> timelist = (ArrayList<String>) this.ds.getAvaliableTimeList(doc_id, day, date);//DB에서 예약이 빈 시간에 대한 값 반환
		
		JSONArray jArray = new JSONArray();//JSONArray객체생성
		if (timelist == null)
			  System.out.println("list is null");
		System.out.println("******timelist :");
		
		//foreach : 돌리면 순서가 뒤바뀜
		/*
		 * for (String s : timelist) { int hour = Integer.parseInt(s);//10, 11... String
		 * time = Integer.toString(hour) + ":00-" + Integer.toString(hour + 1) + ":00";
		 * 
		 * jo.put(s, time); //resultMap.put(s, s); System.out.println(s); }
		 */
		
		for(int i = 0; i < timelist.size(); i++) {
			JSONObject jo = new JSONObject();//JSON객체생성
			
			System.out.println(timelist.get(i));
			int hour = Integer.parseInt(timelist.get(i));//10, 11...
			String time = Integer.toString(hour) + ":00-" + Integer.toString(hour + 1) + ":00";//10:00-11:00
			System.out.println(time);
			//jo.put(timelist.get(i), time);
			jo.put("time", timelist.get(i));//10
			jo.put("timehr", time);//10:00-11:00
			jArray.add(jo);//JSON배열에 객체를 넣어줌
		}
		System.out.println("json data*****");
		System.out.println(jArray);
			
		try { response.getWriter().print(jArray); //response.getWriter로 프린트 해주면 통신 성공 
		} catch (Exception e) { 
			e.printStackTrace(); 
		} 	
	}
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/member/ajax_getlist", method=RequestMethod.GET)
	 * public ModelAndView AjaxView(HttpServletRequest request, HttpServletResponse
	 * response, @RequestParam("selectedDate") String date,
	 * 
	 * @RequestParam("doc_id") String doc_id,
	 * 
	 * @RequestParam("selectedDay") String day ) throws Exception {
	 * 
	 * ModelAndView modelAndView = new ModelAndView(); List<String> timelist =
	 * this.ds.getAvaliableTimeList(doc_id, day, date); if (timelist == null)
	 * System.out.println("list is null"); System.out.println("******timelist :");
	 * for (String s : timelist) { System.out.println(s); }
	 * 
	 * modelAndView.setViewName("member/appointmentForm");
	 * modelAndView.addObject("timelist", timelist); return modelAndView;
	 * 
	 * }
	 */
	 
}