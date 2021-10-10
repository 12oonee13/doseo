package doseo.dao.mybatis.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import doseo.model.Review;

public interface ReviewMapper {

	List<Review> getReview_list(String userId);
	
	Review getReview(String review_id);
	
	void deleteReview(String review_id);
	
	List<Review> getReviewByHosId(String hos_id);	
	
	double getAVGRate(String hos_id);
	
	Review getReviewDetailById(@Param("hos_id") String hos_id, @Param("review_id") String review_id);

	void insertReview(Review review);
	
	int reviewExistCheck(String ap_id);
	
	List<Review> getAllReview(); 
	
	List<Review> getAllReviewByHosId(String hos_id);
	
}
