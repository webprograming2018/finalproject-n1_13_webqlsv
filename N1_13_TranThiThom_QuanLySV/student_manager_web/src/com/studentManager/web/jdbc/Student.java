package com.studentManager.web.jdbc;

public class Student {

	private int id;
	private String name;
	private String dOB;
	private String gender;
	private String email;
	private String country;
	private int mark;
	
	
	public Student(int id, String name, String dOB, String gender, String email, String country, int mark) {
		super();
		this.id = id;
		this.name = name;
		this.dOB = dOB;
		this.gender = gender;
		this.email = email;
		this.country = country;
		this.mark = mark;
	}

	public Student(String name, String dOB, String gender, String email, String country, int mark) {
		super();
		this.name = name;
		this.dOB = dOB;
		this.gender = gender;
		this.email = email;
		this.country = country;
		this.mark = mark;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getdOB() {
		return dOB;
	}

	public void setdOB(String dOB) {
		this.dOB = dOB;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCountry() {
		return country;
	}

	public void setCountry(String country) {
		this.country = country;
	}

	public int getMark() {
		return mark;
	}

	public void setMark(int mark) {
		this.mark = mark;
	}

	@Override
	public String toString() {
		return "Student [id=" + id + ", name=" + name + ", dOB=" + dOB + ", gender=" + gender + ", email=" + email
				+ ", country=" + country + ", mark=" + mark + "]";
	}

	
	
	
}