package spms.controller;

import java.util.Map;

import spms.annotation.Component;
import spms.bind.DataBinding;
import spms.dao.BoardDAO;
import spms.vo.Board;

@Component("/board/update.do")
public class BoardUpdateController implements Controller, DataBinding {
   BoardDAO boardDAO;
   
   public BoardUpdateController setProjectDAO(BoardDAO boardDAO) {
      this.boardDAO = boardDAO;
      return this;
   }
   
   @Override
   public Object[] getDataBinders() {
      return new Object[] {
            "no", Integer.class,
            "board", spms.vo.Board.class
      };
   }
   
   @Override
   public String execute(Map<String, Object> model) throws Exception {
      Board board = (Board)model.get("board");
      
      if(board.getName() == null) {
         Integer no = (Integer)model.get("no");
         Board detailInfo = boardDAO.selectOne(no);
         model.put("board", detailInfo);
         return "/board/BoardUpdateForm.jsp";
      } else {
         boardDAO.update(board);
         return "redirect:/board/list.do";
      }
   }
}