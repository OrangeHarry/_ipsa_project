package spms.vo;

public class Member {
	protected String id;
	protected String password;
	protected String name;
	protected String email;
	protected String phone;
	protected String company;
	
	public String getId() {
		return id;
	}
	public Member setId(String id) {
		this.id = id;
		return this;
	}
	public String getPassword() {
		return password;
	}
	public Member setPassword(String password) {
		this.password = password;
		return this;
	}
	public String getName() {
		return name;
	}
	public Member setName(String name) {
		this.name = name;
		return this;
	}
	public String getEmail() {
		return email;
	}
	public Member setEmail(String email) {
		this.email = email;
		return this;
	}
	public String getPhone() {
		return phone;
	}
	public Member setPhone(String phone) {
		this.phone = phone;
		return this;
	}
	public String getCompany() {
		return company;
	}
	public Member setCompany(String company) {
		this.company = company;
		return this;
	}
	
	
}
