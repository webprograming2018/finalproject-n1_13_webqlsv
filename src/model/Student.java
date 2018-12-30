package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import DAO.StudentDAO;
import connection.DBConnect;

public class Student {
	private long student_id;
	private String student_name;
	private String student_birthday;
	private String student_gender;
	private String student_location;
	
	public long getStudent_id() {
		return student_id;
	}
	public void setStudent_id(long student_id) {
		this.student_id = student_id;
	}
	public String getStudent_name() {
		return student_name;
	}
	public void setStudent_name(String student_name) {
		this.student_name = student_name;
	}
	public String getStudent_birthday() {
		return student_birthday;
	}
	public void setStudent_birthday(String student_birthday) {
		this.student_birthday = student_birthday;
	}
	public String getStudent_gender() {
		return student_gender;
	}
	public void setStudent_gender(String student_gender) {
		this.student_gender = student_gender;
	}
	public String getStudent_location() {
		return student_location;
	}
	public void setStudent_location(String student_location) {
		this.student_location = student_location;
	}
	
	

public void insertStudent(Student s) throws SQLException {
		Connection connection = DBConnect.getConnection();
		String sql ="INSERT INTO student(student_id,student_name, student_birthday, student_gender, student_location) VALUES(?,?,?,?,?)";
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, s.getStudent_id());
			ps.setString(2, s.getStudent_name());
			ps.setString(3, s.getStudent_birthday());
			ps.setString(4, s.getStudent_gender());
			ps.setString(5, s.getStudent_location());
			ps.executeUpdate();
			connection.close();
			
		}catch(SQLException ex) {
			Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
			

		
		
}

public boolean editStudent(Student s) {
		
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE student set student_id = ? ,student_name=?,student_birthday=?,student_gender=?,student_location=?  WHERE student_id = ?";
		System.out.println(sql);
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setLong(1, s.getStudent_id());
			ps.setString(2, s.getStudent_name());
			ps.setString(3,s.getStudent_birthday());
			ps.setString(4,s.getStudent_gender());
			ps.setString(5,s.getStudent_location());
			ps.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
// xoa sinh vien 

public void deleteStudentById(long id) throws SQLException {
		Connection connection = DBConnect.getConnection();

		String query = "delete from student where student_id = ?";
		PreparedStatement preparedStmt = connection.prepareStatement(query);
		preparedStmt.setLong(1, id);
		preparedStmt.execute();

		connection.close();

}
// them sinh vien 

public static void main(String arg[]) {
	ArrayList<Student> list = new StudentDAO().getAllStudent();
	for(Student student : list) {
		System.out.println(student.getStudent_name()+"-"+student.getStudent_id());
		
	}
	
	
}
public Student getStudentById(long id) {
	Student s = new Student();
	try {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM student WHERE student_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setLong(1, id);
		ResultSet rs = ps.executeQuery();
		
		while (rs.next()) {
			s.setStudent_id(rs.getLong("student_id"));
			s.setStudent_name(rs.getString("student_name"));
		}
		connection.close();
		return s;
	} catch (SQLException ex) {
		Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
	return s;
	
}
}
