package doseo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import doseo.command.ReviewCommand;
import doseo.model.Appointment;
import doseo.model.Member;
import doseo.model.Review;
import doseo.service.dsFacade;

@Controller
public class ReviewController {
	@Autowired
	private dsFacade ds;

	@GetMapping("/member/review_list")
	public String toReview_list(HttpServletRequest request, Model model) {
		Member user = (Member)request.getSession().getAttribute("sessionForUser");
		String userId = user.getId();
		
		System.out.println(userId);
		
		List<Review> review_list = new ArrayList<>();
		review_list = ds.getReview_list(userId);
		
		//test
		System.out.println("*****************");
		for(Review review : review_list)
			System.out.println(review.getDetail()+" ");
		
		
		model.addAttribute("review_list", review_list);

		return "member/review_list";
	}
	
	@GetMapping("/member/review_detail")
	public String toReview_detail(HttpServletRequest request, Model model) {
		Review review = ds.getReview(request.getParameter("review_id"));
		model.addAttribute("review",review);
		
		return "member/review_list_detail";
	}
	
	@GetMapping("/member/review_delete")
	public String delete_review(HttpServletRequest request, Model model) {
		ds.deleteReview(request.getParameter("review_id"));
		
		return "redirect:review_list";
	}
	
	//0926 리뷰 입력 폼으로 이동
	@RequestMapping("/member/register_review_form")
	public String registerReview(@RequestParam("ap_id")String ap_id, Model model) {
		Appointment ap = ds.getAppointment(ap_id);
		model.addAttribute("ap", ap);
		
		return "member/register_review_form";	
	}
	
	//0926 리뷰 등록
	@RequestMapping(value="/member/review_confirm", method= {RequestMethod.POST, RequestMethod.GET})
	public String registerConfirm(HttpServletRequest request, 
			@RequestParam(value="ap_id")String ap_id,
		/*	@RequestParam(value="user_id")String user_id,
			@RequestParam(value="rate")String rate,
			@RequestParam(value="deptName")String ,*/
			Model model, ReviewCommand rc) throws Exception {
		
		Review review = new Review(
				rc.getDetail(),
				ap_id,
				((Member) request.getSession().getAttribute("sessionForUser")).getId(),
				rc.getRate()	
		);
		ds.insertReview(review);
		System.out.println("성공!");
		
		return "member/mypage";
	
	}	
}
