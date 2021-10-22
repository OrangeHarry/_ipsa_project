package spms.vo;

import java.sql.Date;

public class Review {
	protected int no;
	protected String name;
	protected String content;
	protected Date regDate;
	protected int branch;
	protected String id;
	
	public String getId() {
		return id;
	}
	public Review setId(String id) {
		this.id = id;
		return this;
	}
	public int getNo() {
		return no;
	}
	public Review setNo(int no) {
		this.no = no;
		return this;
	}
	public int getBranch() {
		return branch;
	}
	public Review setBranch(int branch) {
		this.branch = branch;
		return this;
	}
	public String getName() {
		return name;
	}
	public Review setName(String name) {
		this.name = name;
		return this;
	}
	
	public String getContent() {
		return content;
	}
	public Review setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getRegDate() {
		return regDate;
	}
	public Review setRegDate(Date regDate) {
		this.regDate = regDate;
		return this;
	}
	
	
}