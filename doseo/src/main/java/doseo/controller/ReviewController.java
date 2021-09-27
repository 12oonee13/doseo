package doseo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

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
	
}
