package doseo.controller;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import doseo.model.Doctor;
import doseo.model.Hospital;
import doseo.model.Member;
import doseo.service.dsFacade;

@Controller
public class LogInController {

	private dsFacade ds;

	@Autowired
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}

	@RequestMapping("/index")
	public String form() {
		return "member/home";
	}

	@RequestMapping(value = "member/login", method = RequestMethod.POST) // 로그인
	public ModelAndView handleRequest(HttpServletRequest request, HttpSession session, Model model,
			@RequestParam("kind_of_user") String kind_of_user, @RequestParam("id") String id,
			@RequestParam("password") String password) throws Exception {

		System.out.println(kind_of_user);

		if (kind_of_user.equals("individual")) {
			Member member = ds.getMember(id, password);

			if (member == null) {
				System.out.println("NoIdPassword");
				return new ModelAndView("member/login"); // 다시 로그인 시키도록
			} else {
				session.setAttribute("sessionForUser", member);
				/*
				 * 세션 테스트 Member sessionTest = new Member();
				 * sessionTest=(Member)session.getAttribute("sessionForUser");
				 * System.out.println("#############################"+sessionTest.getId());
				 */
				return new ModelAndView("member/home");
			}
		}
		else if (kind_of_user.equals("doctor")) {
			Doctor doctor = ds.getDoctor(id, password);

			if (doctor == null)
				return new ModelAndView("member/login");
			else {
				session.setAttribute("sessionForUser", doctor);
				return new ModelAndView("redirect:/doctor/doc_home");
			}
		}
		else {   
			Hospital hospital = ds.getHospital(id, password);
			
			if (hospital == null)
				return new ModelAndView("member/login");
			else {
				session.setAttribute("sessionForUser", hospital);
				return new ModelAndView("redirect:/hospital/manager_main");
			}
		}
	}
	
	@GetMapping("/member/logout") // 로그아웃
	public String signOut(HttpSession session) throws Exception {
		session.removeAttribute("sessionForUser");
		session.invalidate();
		return "redirect:/index";
	}

	@GetMapping("/member/home")
	public String toMain() {
		return "redirect:/index";
	} // 로그인 안되어있을때 home 누를 때

	@GetMapping("/member/login_home")
	public String toMain_login() {
		return "member/home";
	} // 로그인 되어있을때 home 누를때

}