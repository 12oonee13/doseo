package doseo.model;

import java.io.Serializable;

@SuppressWarnings("serial")
public class Review implements Serializable{
	
	private String review_id;
	private String detail;
	private String rate;
	private String ap_id; //예약내역 갈때 
	private String hos_name_eng;
	private String ap_date;
	
	private String user_id;
	private String ap_time;
	private String select_language;
	private String hos_id;
	private String dept_id;
	private String doc_id;
	private String message;
	
	private String dept_name_eng;
	private String doc_name;

	public Review() {}
	
	//리뷰 등록 시 사용
	public Review(String detail, String ap_id, String user_id, String rate) {
		super();
		this.detail = detail;
		this.ap_id = ap_id;
		this.user_id = user_id;
		this.rate = rate;
	}
	
	public Review(String review_id, String detail, String rate, String user_id, String ap_date) { //0925 서연 추가 
		super();
		this.review_id = review_id;
		this.detail = detail;
		this.rate = rate;
		this.user_id = user_id;
		this.ap_date = ap_date;
	}

	public Review(String review_id, String detail, String rate, String ap_id, String hos_name_eng, String ap_date) {
		super();
		this.review_id = review_id;
		this.detail = detail;
		this.rate = rate;
		this.ap_id = ap_id;
		this.hos_name_eng = hos_name_eng;
		this.ap_date = ap_date;
	}
	
	//0922추가
	//<!-- 해당 병원의 전체 REVIEW -->
	//<select id="getReviewByHosId" resultType="Review">
	public Review(String review_id, String user_id, String ap_time, String rate, String detail, String select_language,
			String hos_id, String dept_id, String doc_id, String message) {
		super();
		this.review_id = review_id;
		this.user_id = user_id;
		this.ap_time = ap_time;
		this.rate = rate;
		this.detail = detail;
		this.select_language = select_language;
		this.hos_id = hos_id;
		this.dept_id = dept_id;
		this.doc_id = doc_id;
		this.message = message;
	}
	
	
	//리뷰상세
	public Review(String review_id,  String user_id, String rate, String ap_id, String ap_time, 
			String select_language, String detail, String message, String dept_name_eng, String doc_name, String doc_id) {
		super();
		this.review_id = review_id;
		this.user_id = user_id;
		this.rate = rate;
		this.ap_id = ap_id;
		this.ap_time = ap_time;
		this.select_language = select_language;
		this.detail = detail;
		this.message = message;
		this.dept_name_eng = dept_name_eng;
		this.doc_name = doc_name;
		this.doc_id = doc_id;
	}

	public String getReview_id() {
		return review_id;
	}


	public void setReview_id(String review_id) {
		this.review_id = review_id;
	}


	public String getDetail() {
		return detail;
	}


	public void setDetail(String detail) {
		this.detail = detail;
	}


	public String getRate() {
		return rate;
	}


	public void setRate(String rate) {
		this.rate = rate;
	}


	public String getAp_id() {
		return ap_id;
	}


	public void setAp_id(String ap_id) {
		this.ap_id = ap_id;
	}

	public String getAp_date() {
		return ap_date;
	}
	
	public void setAp_date(String ap_date) {
		this.ap_date = ap_date;
	}

	public String getHos_name_eng() {
		return hos_name_eng;
	}

	public void setHos_name_eng(String hos_name_eng) {
		this.hos_name_eng = hos_name_eng;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getAp_time() {
		return ap_time;
	}

	public void setAp_time(String ap_time) {
		this.ap_time = ap_time;
	}

	public String getSelect_language() {
		return select_language;
	}

	public void setSelect_language(String select_language) {
		this.select_language = select_language;
	}

	public String getHos_id() {
		return hos_id;
	}

	public void setHos_id(String hos_id) {
		this.hos_id = hos_id;
	}

	public String getDept_id() {
		return dept_id;
	}

	public void setDept_id(String dept_id) {
		this.dept_id = dept_id;
	}

	public String getDoc_id() {
		return doc_id;
	}

	public void setDoc_id(String doc_id) {
		this.doc_id = doc_id;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	public String getDept_name_eng() {
		return dept_name_eng;
	}

	public void setDept_name_eng(String dept_name_eng) {
		this.dept_name_eng = dept_name_eng;
	}

	public String getDoc_name() {
		return doc_name;
	}

	public void setDoc_name(String doc_name) {
		this.doc_name = doc_name;
	}
	
	
	
}
