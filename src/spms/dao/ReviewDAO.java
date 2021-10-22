package spms.dao;

import java.util.List;

import spms.vo.Review;

public interface ReviewDAO {
	List<Review> selectlist() throws Exception;
	int insert(Review review) throws Exception;
	Review selectOne(int no) throws Exception;
	int update(Review review) throws Exception;
	int delete(int no) throws Exception;
}
