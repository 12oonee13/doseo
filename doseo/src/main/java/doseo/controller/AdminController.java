package doseo.controller;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import doseo.model.Member;
import doseo.service.dsFacade;

@Controller
public class AdminController {
	/*
	 * @Autowired private dsFacade ds;
	 * 
	 * public void setDs(dsFacade ds) { this.ds = ds; }
	 */
	
	//admin main
	@RequestMapping("/admin/main")
	public String goToAdminMain(HttpServletRequest request, Model model) {
		Member admin = (Member)request.getSession().getAttribute("sessionForUser");
		//Member adminInfo 
		
		return "admin/admin_main";
	}

}
