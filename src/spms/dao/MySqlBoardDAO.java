package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Board;


@Component("boardDAO")
public class MySqlBoardDAO implements BoardDAO {
   DataSource ds;
   
   public void setDataSource(DataSource ds) {
      this.ds = ds;
   }

   @Override
   public List<Board> selectlist() throws Exception {
      Connection connection = null;
      Statement stmt = null;
      ResultSet rs = null;
      String sqlSelect = "SELECT * FROM BOARD ORDER BY BOARD_NO DESC";
      
      try {
         connection = ds.getConnection();
         stmt = connection.createStatement();
         rs = stmt.executeQuery(sqlSelect);
         
         ArrayList<Board> board = new ArrayList<Board>();
         while(rs.next()) {
            board.add(new Board()
                            .setNo(rs.getInt("BOARD_NO"))
                             .setSelect(rs.getString("SELECT_TYPE"))
                             .setName(rs.getString("NAME"))
                            .setTitle(rs.getString("TITLE"))
                            .setContent(rs.getString("CONTENT"))
                            .setReservation(rs.getDate("RESERVATION")));
         }
         
         return board;
      } catch(Exception e) {
         throw e;
      } finally {
         try {
            if(rs != null) {
               rs.close();
            }
         } catch(Exception e) {
            throw e;
         }
         
         try {
            if(stmt != null) {
               stmt.close();
            }
         } catch(Exception e) {
            throw e;
         }
         try {
            if(connection != null) {
               connection.close();
            }
         } catch(Exception e) {
            throw e;
         }
      }
   }
   

   @Override
   public int insert(Board board) throws Exception {
      Connection connection = null;
      PreparedStatement stmt = null;

      
      String sqlInsert = "INSERT INTO BOARD(SELECT_TYPE, NAME, TITLE, CONTENT, REG_DATE, RESERVATION)" +
                              "VALUES(?, ?, ?, ?, NOW(), ?)";
      
      try {
         connection = ds.getConnection();
         stmt = connection.prepareStatement(sqlInsert);
         stmt.setString(1, board.getSelect());
         stmt.setString(2, board.getName());
         stmt.setString(3, board.getTitle());
         stmt.setString(4, board.getContent());         
         stmt.setDate(5, new java.sql.Date(board.getReservation().getTime()));
         
         return stmt.executeUpdate();
      } catch(Exception e) {
         throw e;
      } finally {
         try {
            if(stmt != null) {
               stmt.close();
            }
         } catch(Exception e) {
            throw e;
         }
         try {
            if(connection != null) {
               connection.close();
            }
         } catch(Exception e) {
            throw e;
         }
      }
   }

   @Override
   public Board selectOne(int no) throws Exception {
      Connection connection = null;
      Statement stmt = null;
      ResultSet rs = null;
      
      String sqlSelectOne = "SELECT * FROM BOARD WHERE BOARD_NO=" + no;
      
      try {
         connection = ds.getConnection();
         stmt = connection.createStatement();
         rs = stmt.executeQuery(sqlSelectOne);
         if(rs.next()) {
            return new Board()
                           .setNo(rs.getInt("BOARD_NO"))
                           .setSelect(rs.getString("SELECT_TYPE"))
                           .setName(rs.getString("NAME"))
                           .setTitle(rs.getString("TITLE"))
                           .setContent(rs.getString("CONTENT"))
                           .setRegDate(rs.getDate("REG_DATE"))
                           .setReservation(rs.getDate("RESERVATION"));
         } else {
            throw new Exception("해당 번호의 작성글을 찾을 수 없습니다.");
         }
      } catch(Exception e) {
         throw e;
      } finally {
         try {
            if(rs != null) {
               rs.close();
            }
         } catch(Exception e) {
            throw e;
         }
         
         try {
            if(stmt != null) {
               stmt.close();
            }
         } catch(Exception e) {
            throw e;
         }
         try {
            if(connection != null) {
               connection.close();
            }
         } catch(Exception e) {
            throw e;
         }
      }
   }

   @Override
   public int update(Board board) throws Exception {
      Connection connection = null;
      PreparedStatement stmt = null;
      
      String sqlUpdate = "UPDATE BOARD SET SELECT_TYPE=?, NAME=?, TITLE=?, CONTENT=?, RESERVATION=? WHERE BOARD_NO=?";
      
      try {
         connection = ds.getConnection();
         stmt = connection.prepareStatement(sqlUpdate);
         stmt.setString(1, board.getSelect());
         stmt.setString(2, board.getName());
         stmt.setString(3, board.getTitle());
         stmt.setString(4, board.getContent());
         stmt.setDate(5, new java.sql.Date(board.getReservation().getTime()));
         stmt.setInt(6, board.getNo());
         
         return stmt.executeUpdate();
      } catch(Exception e) {
         throw e;
      } finally {
         try {
            if(stmt != null) {
               stmt.close();
            }
         } catch(Exception e) {
            throw e;
         }
         try {
            if(connection != null) {
               connection.close();
            }
         } catch(Exception e) {
            throw e;
         }
      }
   }

   @Override
   public int delete(int no) throws Exception {
      Connection connection = null;
      Statement stmt = null;
      
      String sqlDelete = "DELETE FROM BOARD WHERE BOARD_NO=" + no;
      
      try {
         connection = ds.getConnection();
         stmt = connection.createStatement();
         return stmt.executeUpdate(sqlDelete);
      } catch(Exception e) {
         throw e;
      } finally {
         try {
            if(stmt != null) {
               stmt.close();
            }
         } catch (Exception e) {
            throw e;
         }

         try {
            if (connection != null) {
               connection.close();
            }
         } catch (Exception e) {
            throw e;
         }
      }
   }
}