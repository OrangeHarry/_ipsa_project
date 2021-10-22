package spms.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import spms.annotation.Component;
import spms.vo.Review;

@Component("reviewDAO")
public class MySqlReviewDAO implements ReviewDAO{
	DataSource ds;
	
	public void setDataSource(DataSource ds) {
		this.ds = ds;
	}
	
	@Override
	public List<Review> selectlist() throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		String sqlSelect = "SELECT * FROM REVIEW ORDER BY REVIEW_NO DESC";
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelect);
			
			ArrayList<Review> review = new ArrayList<Review>();
			while(rs.next()) {
				review.add(new Review()
										  .setNo(rs.getInt("REVIEW_NO"))
										  .setName(rs.getString("NAME"))
										  .setContent(rs.getString("CONTENT"))
										  .setRegDate(rs.getDate("REG_DATE"))
										  .setBranch(rs.getInt("BRANCH")));
			}
			
			return review;
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
	public int insert(Review review) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlInsert = "INSERT INTO REVIEW(REVIEW_NO, NAME, CONTENT, REG_DATE, BRANCH)" +
									   "VALUES(?, ?, ?, NOW(), ?)";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlInsert);
			stmt.setInt(1, review.getNo());
			stmt.setString(2,review.getName());
			stmt.setString(3, review.getContent());
			stmt.setInt(4, review.getBranch());
			
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
	public Review selectOne(int no) throws Exception {
		Connection connection = null;
		Statement stmt = null;
		ResultSet rs = null;
		
		String sqlSelectOne = "SELECT * FROM REVIEW WHERE REVIEW_NO=" + no;
		
		try {
			connection = ds.getConnection();
			stmt = connection.createStatement();
			rs = stmt.executeQuery(sqlSelectOne);
			if(rs.next()) {
				return new Review()
									.setNo(rs.getInt("REVIEW_NO"))
									.setName(rs.getString("NAME"))
									.setContent(rs.getString("CONTENT"))
									.setBranch(rs.getInt("BRANCH"))
									.setRegDate(rs.getDate("REG_DATE"));
			} else {
				throw new Exception("해당 리뷰를 찾을 수 없습니다.");
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
	public int update(Review review) throws Exception {
		Connection connection = null;
		PreparedStatement stmt = null;
		
		String sqlUpdate = "UPDATE REVIEW SET BRANCH=?, NAME=?, CONTENT=? WHERE REVIEW_NO=?";
		
		try {
			connection = ds.getConnection();
			stmt = connection.prepareStatement(sqlUpdate);
			stmt.setInt(1, review.getBranch());
			stmt.setString(2, review.getName());
			stmt.setString(3, review.getContent());
			stmt.setInt(4, review.getNo());
			
			
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
		
		String sqlDelete = "DELETE FROM REVIEW WHERE REVIEW_NO=" + no;
		
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
}
