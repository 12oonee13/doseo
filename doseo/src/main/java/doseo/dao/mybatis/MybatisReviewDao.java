package doseo.dao.mybatis;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import doseo.dao.ReviewDao;
import doseo.dao.mybatis.mapper.ReviewMapper;
import doseo.model.Review;

@Repository
public class MybatisReviewDao implements ReviewDao{
	
	@Autowired
	private ReviewMapper reviewMapper;
	
	public List<Review> getReview_list(String userId) throws DataAccessException{
		return reviewMapper.getReview_list(userId);
	}
	
	public Review getReview(String review_id) throws DataAccessException{
		return reviewMapper.getReview(review_id);
	}
	
	public void deleteReview(String review_id) throws DataAccessException{
		reviewMapper.deleteReview(review_id);
	}
	
	public List<Review> getReviewByHosId(String hos_id) throws DataAccessException{
		return reviewMapper.getReviewByHosId(hos_id);
	}
	
	public double getAVGRate(String hos_id) throws DataAccessException{
		return reviewMapper.getAVGRate(hos_id);
	}
	
	public Review getReviewDetailById(String hos_id, String review_id) throws DataAccessException{
		return reviewMapper.getReviewDetailById(hos_id, review_id);
	}
}
