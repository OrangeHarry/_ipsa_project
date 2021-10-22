package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.BoardDAO;
import spms.vo.Board;

@Component("/board/add.do")
public class BoardAddController implements Controller, DataBinding {
   BoardDAO boardDAO;
   
   public BoardAddController setProjectDAO(BoardDAO boardDAO) {
      this.boardDAO = boardDAO;
      return this;
   }
   
   @Override
   public Object[] getDataBinders() {
      return new Object[] {
            "board", spms.vo.Board.class
      };
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      Board board = (Board)model.get("board");
      if(board.getName() == null) {
         return "../write.jsp";
      } else {
         boardDAO.insert(board);
         return "redirect:/board/list.do";
      }
   }
}