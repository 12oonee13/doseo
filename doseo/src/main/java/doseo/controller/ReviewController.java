package doseo.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

import doseo.command.ReviewCommand;
import doseo.model.Appointment;
import doseo.model.Member;
import doseo.model.Pharmacy;
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
		
		return "redirect:/member/mypage";
	
	}	
	
	//전체리뷰 메인페이지
	@RequestMapping("/review/review_main")
	public String goReview(Model model) {
		List<Review> revlist = new ArrayList<>();
		revlist = ds.getAllReview();
		
		model.addAttribute("revlist", revlist);
		
		return "/review/review_main";
	}
	
	/*
	 * @ResponseBody
	 * 
	 * @RequestMapping(value="/review/ajax_getReviewlist", method=RequestMethod.GET)
	 * public void revAjaxView(HttpServletRequest request, HttpServletResponse
	 * response,
	 * 
	 * @RequestParam("hos_id") String hos_id) throws Exception{ JSONArray jArray =
	 * new JSONArray();//JSONArray객체생성 ArrayList<Review> list = null; //전체 병원에 대한 경우
	 * + 특정 병원에 대한 경우로 나눠서 if(hos_id.equals("All")) { list =
	 * (ArrayList<Review>)ds.getAllReview(); System.out.println("list size1" +
	 * list.size()); if (list.size() == 0) {//해당 결과가 없는 경우 try {
	 * response.getWriter().print("null"); //response.getWriter로 프린트 해주면 통신 성공 }
	 * catch (Exception e) { e.printStackTrace(); } } } else {//특정 병원을 선택한 경우 list =
	 * (ArrayList<Review>)ds.getAllReviewByHosId(hos_id);
	 * System.out.println("list size2" + list.size()); if (list.size() == 0) {//해당
	 * 결과가 없는 경우 try { response.getWriter().print("null"); //response.getWriter로 프린트
	 * 해주면 통신 성공 } catch (Exception e) { e.printStackTrace(); } } } //json형식으로 리스트의
	 * 내용을 옮기기 for (int i = 0; i < list.size(); i++) {
	 * System.out.println(list.get(i).getAp_id()); JSONObject jo = new
	 * JSONObject();//JSON객체생성 jo.put("hos_name_eng",
	 * list.get(i).getHos_name_eng()); jo.put("user_id", list.get(i).getUser_id());
	 * jo.put("review_id", list.get(i).getReview_id()); jo.put("detail",
	 * list.get(i).getDetail()); jo.put("ap_id", list.get(i).getAp_id());
	 * jo.put("rate", list.get(i).getRate()); jo.put("dept_name_eng",
	 * list.get(i).getDept_name_eng()); jo.put("ap_date", list.get(i).getAp_date());
	 * jArray.add(jo); } try { response.getWriter().print(jArray);
	 * //response.getWriter로 프린트 해주면 통신 성공 } catch (Exception e) {
	 * e.printStackTrace(); }
	 * 
	 * 
	 * }
	 */
}
