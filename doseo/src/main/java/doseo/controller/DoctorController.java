package doseo.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import doseo.command.DoctorCommand;
import doseo.model.Appointment;
import doseo.model.Doctor;
import doseo.model.ForCount;
import doseo.model.Timetable;
import doseo.service.ExistUserIdException;
import doseo.service.dsFacade;

@Controller
public class DoctorController {
	@Autowired
	private dsFacade ds;
	
	@RequestMapping(value = "doctor/doc_home", method = RequestMethod.GET)
	public String handleRequest(HttpServletRequest request, Model model) {
		
		String doc_id = ((Doctor)request.getSession().getAttribute("sessionForUser")).getDoc_id();
		
		List<Timetable> timetable = new ArrayList<>();
		timetable = ds.getTimetable(doc_id);
		
		int countMonthlyAppointments = ds.countMonthlyAppointments(doc_id);
		int countTodayAppointments = ds.countTodayAppointments(doc_id);
		
		List<ForCount> genderCount = new ArrayList<>();
		genderCount = ds.countMonthlyGender(doc_id); //female, male, none 순으로 저장됨
		int[] gender = {0,0,0};
		
		for (int i = 0; i < genderCount.size(); i++) {
			switch (genderCount.get(i).getStr()) {
			case "female":
				gender[0] = genderCount.get(i).getNum();
				break;
				
			case "male":
				gender[1] = genderCount.get(i).getNum();
				break;
			
			case "none":
				gender[2] = genderCount.get(i).getNum();
				break;
			}
		}
		
		
		List<ForCount> ageCount = new ArrayList<>();
		ageCount = ds.countAge(doc_id);
		
		int[] ages = {0,0,0,0,0,0};
		for (int i = 0; i < ageCount.size(); i++) {
			switch (ageCount.get(i).getStr()) {
			case "0-19":
				ages[0] = ageCount.get(i).getNum();
				break;
			case "20-29":
				ages[1] = ageCount.get(i).getNum();
				break;
			case "30-39":
				ages[2] = ageCount.get(i).getNum();
				break;
			case "40-49":
				ages[3] = ageCount.get(i).getNum();
				break;
			case "50-59":
				ages[4] = ageCount.get(i).getNum();
				break;
			case "60+":
				ages[5] = ageCount.get(i).getNum();
				break;
			}
		}
		System.out.println(gender[0]);
		System.out.println(gender[1]);
		System.out.println(gender[2]);
		
		model.addAttribute("countMonthlyAppointments", countMonthlyAppointments);
		model.addAttribute("countTodayAppointments", countTodayAppointments);
		model.addAttribute("timetable", timetable);
		model.addAttribute("genderCount",gender);
		model.addAttribute("ages",ages);
		
		
		return "doctor/doc_home";
	}
	
	
	@GetMapping("/doctor/update_timetable")
	public String update_timetable(HttpServletRequest request, Model model) {
		String doc_id = ((Doctor) request.getSession().getAttribute("sessionForUser")).getDoc_id();

		List<Timetable> timetable = new ArrayList<>();
		timetable = ds.getTimetable(doc_id);

		model.addAttribute("timetable", timetable);
		
		return "doctor/update_timetable";
	}
	
	
	//update버튼 누른거임
	@PostMapping("/doctor/update_timetable")
	public String sche_update(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "am") List<String> amArr, @RequestParam(value = "pm") List<String> pmArr, Model model)
			throws ExistUserIdException {
		String doc_id = ((Doctor)request.getSession().getAttribute("sessionForUser")).getDoc_id();
		
		amArr.remove(amArr.size()-1);
		pmArr.remove(pmArr.size()-1);
		
		Iterator<String> it_am = amArr.iterator();
		Iterator<String> it_pm = pmArr.iterator();


		String[] weekName = {"MON","TUE","WED","THR","FRI","SAT","SUN"};
		String[] week = {"none","none","none","none","none","none","none"}; 
		
	
		while (it_am.hasNext()) {
			int selectWeek = Integer.valueOf(it_am.next()); // 선택한 요일 숫자로 바꿔주기
			week[selectWeek] = "09:10:11:12";// 오전만
		}
		
		while (it_pm.hasNext()) {
			int selectWeek = Integer.valueOf(it_pm.next());
			if (week[selectWeek] == "09:10:11:12")
				week[selectWeek] = "09:10:11:12:14:15:16:17";
			else
				week[selectWeek] ="14:15:16:17";
		}

		for (int i = 0; i < 7; i++) {
			Timetable timetable = new Timetable(doc_id, weekName[i], week[i]);
			ds.updateTimetable(timetable);
		}
		
		return "redirect:/doctor/update_timetable";
	}

	@GetMapping("/doctor/doctor_mypage")
	public String toDoctorMypage(HttpServletRequest request, Model model) {
		String doc_login_id = ((Doctor)request.getSession().getAttribute("sessionForUser")).getDoc_login_id();
		Doctor doctor = ds.getDoctor(doc_login_id);
		
		model.addAttribute("doctorInfo", doctor);
		return "doctor/doctor_mypage";
	}
	
	
	@PostMapping("/doctor/doctor_update")
	public String update(HttpServletRequest request, HttpSession session,
			@ModelAttribute("doctor_update") DoctorCommand doctorCommand, Model model,
			Errors errors) {
		Doctor doctor2 = (Doctor)request.getSession().getAttribute("sessionForUser");
		doctorCommand.setDoc_id(((Doctor)request.getSession().getAttribute("sessionForUser")).getDoc_id());

		if(!doctorCommand.isSamePasswordConfirmPassword()) {
			errors.rejectValue("doc_pwd", "notSamePassword");
			model.addAttribute("doctorInfo", doctor2);
			return "doctor/doctor_mypage";
		}
		else {
			Doctor doctor = new Doctor(
					doctorCommand.getDoc_id(),
					doctorCommand.getDoc_name(),
					doctorCommand.getDoc_pwd(),
					doctorCommand.getSpeciality()
					);
			ds.updateDoctor(doctor);
		}
		return "redirect:/doctor/doctor_mypage";
	}
	
	@GetMapping("doctor/doctor_logout")
	public String logout(HttpServletRequest request) throws Exception {
		HttpSession session = request.getSession();
		
		session.removeAttribute("sessionForUser");
		session.invalidate();
		
		return "redirect:/index";
	}
	
	@GetMapping("doctor/doctor_appointment")
	public String appointment(HttpServletRequest request, Model model) {
		String doc_id = ((Doctor)request.getSession().getAttribute("sessionForUser")).getDoc_id();
		List<Appointment> app_list = new ArrayList<>();
		
		app_list = ds.get_doctor_appList(doc_id);
		
		model.addAttribute("app_list",app_list);
		
		return "doctor/doctor_appointment";
	}
	
	//병원선택 후 해당 병원+과의 의사 리스트
	@RequestMapping("/hospital/chooseDoctor")
	public String chooseDoctor(@RequestParam(value="hosName")String hosName,
			@RequestParam(value="deptName")String deptName, Model model) {
		List<Doctor> doclist = new ArrayList<Doctor>();

		String hos_id = this.ds.getHosId(hosName);
		String dept_id = this.ds.getDeptId(deptName, hos_id);
		System.out.println("dept_id:" + dept_id);
		doclist = this.ds.getDoctorList(dept_id);
		
		int total = doclist.size();//결과로 나오는 의사의 수
		
		model.addAttribute("doclist", doclist);
		model.addAttribute("doctotal", total);
		model.addAttribute("deptName", deptName);
		model.addAttribute("hosName", hosName);
		
		//해당 의사의 시간표를 가져온다.
		HashMap<String, Object> hashmap = new HashMap<String, Object>();
		for (int i=0; i < doclist.size(); i++) {
			String doc_id = doclist.get(i).getDoc_id(); 
			hashmap.put(doc_id,this.ds.getDocTimeList(doc_id));
		}
		
		model.addAttribute("docTime", hashmap);//해당 의사가 가지고 있는 시간표
		
		return "hospital/docoutput";
	}
	
	@PostMapping("/doctor/check_visit")
	public String check_visit(HttpServletRequest request, HttpSession session,
			@RequestParam(value = "visited") List<String> ap_id, Model model) {
		
		Iterator<String> it_apId = ap_id.iterator();
		
		while (it_apId.hasNext()) {
			ds.checkVisited((String)(it_apId.next()));
		}
		
		return "redirect:/doctor/doctor_appointment";
	}
}
