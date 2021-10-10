package doseo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.Errors;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import doseo.command.MemberCommand;
import doseo.model.Member;
import doseo.service.dsFacade;
import doseo.validator.JoinValidator;

@Controller
public class MyPageController {

	@Autowired
	private dsFacade ds;

	@ModelAttribute("mypage_update")
	public MemberCommand formBackingObject(HttpServletRequest request) throws Exception {
		
		return new MemberCommand();
	}
	
	@GetMapping("/member/mypage")
	public String toMyPage(HttpServletRequest request, Model model) {
		
		Member user = (Member)request.getSession().getAttribute("sessionForUser");
		Member userInfo = ds.getMember(user.getId());
		model.addAttribute("userInfo", userInfo);

		return "member/mypage";
	}

	@PostMapping("/member/mypage_update")
	public String update(HttpServletRequest request, HttpSession session,
			@ModelAttribute("mypage_update") MemberCommand memberCommand, BindingResult result, 
			Errors errors) {
		
		new JoinValidator().validate(memberCommand, result);
		
		if (result.hasErrors())
			return "member/mypage";
		
		else {
			Member member = new Member(
					memberCommand.getId(),
					memberCommand.getName(),
					memberCommand.getPassword(),
					memberCommand.getConfirmPassword(),
					memberCommand.getPhone(),
					memberCommand.getAge(),
					memberCommand.getGender(),
					memberCommand.getNationality()
					);
			
			ds.updateMember(member);
			
			return "redirect:/member/mypage";
		}
	}
	
	/* ajax;;
	@PostMapping("/mypage_category")
	public String mypage_category(HttpServletRequest request, HttpServletResponse response) {
		String category = request.getParameter("category");
		System.out.println("************************************"+category);
		return "member/mypage";
	}
	*/
}
