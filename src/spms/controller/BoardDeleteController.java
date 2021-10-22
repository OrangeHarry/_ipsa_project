package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.BoardDAO;

@Component("/board/delete.do")
public class BoardDeleteController implements Controller, DataBinding {
   BoardDAO boardDAO;
   
   public BoardDeleteController setProjectDAO(BoardDAO boardDAO) {
      this.boardDAO = boardDAO;
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
      boardDAO.delete(no);
      
      return "redirect:list.do";
   }
}