
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
import doseo.service.ExistUserIdException;

@Controller
public class JoinController {

	private dsFacade ds;
	
	@Autowired
	public void setDs(dsFacade ds) {
		this.ds = ds;
	}
	
	@ModelAttribute("joinMember")
	public MemberCommand formBackingObject(HttpServletRequest request) throws Exception {
		
		return new MemberCommand();
	}
	
	@GetMapping("/member/join")
	public String toJoin(HttpServletRequest request, Model model) {
		return "member/join";
	}
	
	@PostMapping("member/join_success")
	public String onSubmit(HttpServletRequest request, HttpSession session, 
			Model model,
			@ModelAttribute("joinMember") MemberCommand memberCommand, BindingResult result, 
			Errors errors) throws ExistUserIdException {
			
		new JoinValidator().validate(memberCommand, result);
		if (result.hasErrors())
			return "member/join";
		
		int rslt = ds.idCheck(memberCommand.getId());
		if (rslt != 0) {
			errors.rejectValue("id", "IdDuplicate");
			return "member/join";
		}
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
		
			ds.insertMember(member);
		}
		model.addAttribute("join_success",true);
		return "member/login";
	}
	
}
