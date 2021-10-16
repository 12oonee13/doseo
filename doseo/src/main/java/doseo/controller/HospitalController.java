package doseo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import doseo.command.DoctorCommand;
import doseo.command.HospitalCommand;
import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.Member;
import doseo.service.dsFacade;

@Controller
//@RequestMapping("/hospital")
public class HospitalController {
	
	@Autowired
	private dsFacade ds;
	
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}
	
	@RequestMapping("hospital/searchDept") 
	public String goSearchForm() { 
		return "hospital/searchDept"; 
	
	}
	
	//진료과 리스트에서 선택된 하나의 과가 있는 병원 리스트를 넘겨줌
	@RequestMapping("hospital/searchDeptList")
	public String searchDeptList(@RequestParam(value="deptName")String deptName,
			 Model model) {
		List<Hospital> hoslist = new ArrayList<Hospital>();
		hoslist = this.ds.getHospitalListByDept(deptName);
		
		int total = hoslist.size();
		//예약페이지에서 사용
		//String dept_id = ds.getDeptId(deptName);
		//model.addAttribute("dept_id", dept_id);//바로 예약 페이지로 넘기는거 어떻게...? 그냥 하나하나 다 옮겨가게 일단...
		
		model.addAttribute("deptName", deptName);
		model.addAttribute("hoslist", hoslist);
		model.addAttribute("hostotal", total);
		
		//return "hospital/oldSearchHospital";
		return "hospital/hosoutput";
	}
	
	@GetMapping("/hospital/home")
	public String toMain() {
		return "/member/home";
	} //로그인 안되어있을때 병원리스트 결과에서 home으로	

}
