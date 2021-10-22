package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;

@Component("/review/delete.do")
public class ReviewDeleteController implements Controller, DataBinding {
	ReviewDAO reviewDAO =  null;
	
	public ReviewDeleteController setReviewDAO(ReviewDAO reviewDAO) {
		this.reviewDAO = reviewDAO;
		return this;
	}
	
	@Override
	public Object[] getDataBinders() {
		return new Object[] {
			"no", Integer.class
		};
	}
	
	@Override
	public String execute(Map<String, Object> model) throws Exception {
		Integer no = (Integer)model.get("no");
		reviewDAO.delete(no);
		
		return "redirect:list.do";
	}
}
