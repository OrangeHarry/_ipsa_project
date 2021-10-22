package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.dao.BoardDAO;

@Component("/board/list.do")
public class BoardListController implements Controller {
   BoardDAO boardDAO;
   
   public BoardListController setProjectDAO(BoardDAO boardDAO) {
      this.boardDAO = boardDAO;
      return this;
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      model.put("board", boardDAO.selectlist());
      return "../write5.jsp";
   }
}