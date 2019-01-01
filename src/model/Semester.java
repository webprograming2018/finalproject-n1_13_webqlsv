package model;

public class Semester {
	private long semester_id;
	private String semester_name;
	
	
	public Semester() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	public Semester(long semester_id, String semester_name) {
		super();
		this.semester_id = semester_id;
		this.semester_name = semester_name;
	}

	public long getSemester_id() {
		return semester_id;
	}
	public void setSemester_id(long semester_id) {
		this.semester_id = semester_id;
	}
	public String getSemester_name() {
		return semester_name;
	}
	public void setSemester_name(String semester_name) {
		this.semester_name = semester_name;
	}
	
}
