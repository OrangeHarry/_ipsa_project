package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.ReviewDAO;

@Component("/review/list.do")
public class ReviewListController implements Controller {
   ReviewDAO reviewDAO;
   
   
   public ReviewListController setReviewDAO(ReviewDAO reviewDAO) {
      this.reviewDAO = reviewDAO;
      return this;
   }
   //   public ReviewListController setreviewDAO(ReviewDAO reviewDAO) {
//      this.reviewDAO = reviewDAO;
//      return this;
//   }
//   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      model.put("reviews", reviewDAO.selectlist());
      return "../write6.jsp";
   }
}