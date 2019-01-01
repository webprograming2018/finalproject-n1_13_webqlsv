package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

import connection.DBConnect;

import model.Student;

public class StudentDAO {
	public ArrayList<Student> getAllStudent() {
		
		 ArrayList<Student> allstudent = new ArrayList<Student>();
		 try {
			 Connection connection = DBConnect.getConnection();
			 String sql ="SELECT * FROM student";
			 PreparedStatement ps = connection.prepareCall(sql);
			 ResultSet rs = ps.executeQuery();
			 while (rs.next()) {
					Student s = new Student();
					s.setStudent_id(rs.getLong("student_id"));
					s.setStudent_name(rs.getString("student_name"));
					s.setStudent_birthday(rs.getString("student_birthday"));
					s.setStudent_gender(rs.getString("student_gender"));
					s.setStudent_location(rs.getString("student_location"));
					
					
					allstudent.add(s);
				}
				connection.close();
				return allstudent;
			} catch (SQLException ex) {
				Logger.getLogger(StudentDAO.class.getName()).log(Level.SEVERE, null, ex);
			}
			return allstudent;
			 
		
	}
	// edit student by id 
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
