package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.ReviewDAO;
import spms.vo.Review;

@Component("/review/add.do")
public class ReviewAddController implements Controller, DataBinding {
   ReviewDAO reviewDAO;
   
   public ReviewAddController setProjectDAO(ReviewDAO reviewDAO) {
      this.reviewDAO = reviewDAO;
      return this;
   }
   
   @Override
   public Object[] getDataBinders() {
      return new Object[] {
            "review", spms.vo.Review.class
      };
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      Review review = (Review)model.get("review");
      if(review.getName() == null) {
         return "../write4.jsp"; // ¸®ºäÇÏ±â
      } else {
         reviewDAO.insert(review);
         return "redirect:list.do"; //¸®ºä³»¿ª
      }
   }
}