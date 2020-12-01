package com.login.dto;

//기본생성자, 인자4개받는 생성자, setter & getter
public class LoginDTO {
	private String id;
	private String pwd;
	private String name;
	private double point;
	
	public LoginDTO() {
		super();
	}
	public LoginDTO(String id, String pwd, String name, double point) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.point = point;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public double getPoint() {
		return point;
	}
	public void setPoint(double point) {
		this.point = point;
	}
}
