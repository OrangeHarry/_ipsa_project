package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;

@Component("/review/update.do")
public class ReviewUpdateController implements Controller, DataBinding {
	ReviewDAO reviewDAO;
	
	public ReviewUpdateController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
				"no", Integer.class,
				"review", spms.vo.Review.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Review review = (Review)model.get("review");
		
		if(review.getName() == null) {
			Integer no = (Integer)model.get("no");
			Review detailInfo = reviewDAO.selectOne(no);
			model.put("review", detailInfo);
			return "/review/ReviewUpdateForm.jsp";
		} else {
			reviewDAO.update(review);
			return "redirect:list.do";
		}
	}
}
