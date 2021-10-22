package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ReviewDAO;
import spms.dao.*;
import spms.vo.Review;

@Component("/review/list3.do")
public class ReviewListController3 implements Controller {
	ReviewDAO reviewDAO;
	
	
	public ReviewListController3 setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	//	public ReviewListController setreviewDAO(ReviewDAO reviewDAO) {
//		this.reviewDAO = reviewDAO;
//		return this;
//	}
//	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		model.put("reviews", reviewDAO.selectlist());
		
			return "../serviceoffice_IPAS_02.jsp";
			
	}
}
