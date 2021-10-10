package doseo.dao;

import java.util.List;

import doseo.model.Review;

public interface ReviewDao {
	
	List<Review> getReview_list(String userId);
	
	Review getReview(String review_id);
	
	void deleteReview(String review_id);
	
	List<Review> getReviewByHosId(String hos_id);	
	
	double getAVGRate(String hos_id);
	
	Review getReviewDetailById(String hos_id, String review_id);
	
	void insertReview(Review review);
	
	public int reviewExistCheck(String ap_id);
}
