package spms.vo;

import java.sql.Date;

public class Board {

	protected int no;
	protected String select;
	protected String name;
	protected String title;
	protected String content;
	protected Date regDate;
	protected Date reservation;

	public int getNo() {
		return no;
	}
	public Board setNo(int no) {
		this.no = no;
		return this;
	}
	public String getSelect() {
		return select;
	}
	public Board setSelect(String select) {
		this.select = select;
		return this;
	}
	public String getName() {
		return name;
	}
	public Board setName(String name) {
		this.name = name;
		return this;
	}
	public String getTitle() {
		return title;
	}
	public Board setTitle(String title) {
		this.title = title;
		return this;
	}
	public String getContent() {
		return content;
	}
	public Board setContent(String content) {
		this.content = content;
		return this;
	}
	public Date getRegDate() {
		return regDate;
	}
	public Board setRegDate(Date regDate) {
		this.regDate = regDate;
		return this;
	}
	public Date getReservation() {
		return reservation;
	}
	public Board setReservation(Date reservation) {
		this.reservation = reservation;
		return this;
	}
}
