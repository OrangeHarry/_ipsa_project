package spms.dao;


import java.util.List;

import spms.vo.Board;


public interface BoardDAO {

	List<Board> selectlist() throws Exception;
	int insert(Board board) throws Exception;
	Board selectOne(int no) throws Exception;
	int update(Board board) throws Exception;
	int delete(int no) throws Exception;

}
