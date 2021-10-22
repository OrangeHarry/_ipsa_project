package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ReviewDAO;
import spms.dao.*;
import spms.vo.Review;

@Component("/review/list2.do")
public class ReviewListController2 implements Controller {
	ReviewDAO reviewDAO;
	
	
	public ReviewListController2 setReviewDAO(ReviewDAO reviewDAO) {
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
		
			return "../serviceoffice_IPAS_01.jsp";
			
	}
}
