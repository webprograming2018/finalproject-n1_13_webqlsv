package DAO;
import DAO.SubjectDAO;
import connection.DBConnect;
import model.Subject;
import java.sql.PreparedStatement;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
public class SubjectDAO{
	// lay ta ca subject;
	public ArrayList<Subject> getAllSubject(){
		ArrayList<Subject> allSubject = new ArrayList<>();
		try {
			
			Connection connection = DBConnect.getConnection();
			String sql="SELECT * FROM subject";
			PreparedStatement ps = connection.prepareCall(sql);
			ResultSet rs = ps.executeQuery();
			while (rs.next()) {
				Subject u = new Subject();
				u.setSubject_id(rs.getLong("subject_id"));
				u.setSubject_name(rs.getString("subject_name"));
				
				
				allSubject.add(u);
			}
			connection.close();
			return allSubject;
		} catch (SQLException ex) {
			Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return allSubject;
		}
		
	// sua subject
public boolean editSubject(Subject s) {
		
		Connection connection = DBConnect.getConnection();
		String sql = "UPDATE subject set subject_name = ? WHERE subject_id = ?";
		System.out.println(sql);
		try {
			PreparedStatement ps = connection.prepareCall(sql);
			ps.setString(1, s.getSubject_name());
			ps.setLong(2, s.getSubject_id());
			
			ps.executeUpdate();
			connection.close();
			return true;
		} catch (SQLException ex) {
			Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
		}
		return false;
	}
// lay ten cua subject ung voi id
public Subject getSubjectById(long id) {
	Subject c = new Subject();
	try {
		Connection connection = DBConnect.getConnection();
		String sql = "SELECT * FROM subject WHERE subject_id = ?";
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setLong(1, id);
		ResultSet rs = ps.executeQuery();
		
		while (rs.next()) {
			c.setSubject_id(rs.getLong("subject_id"));
			c.setSubject_name(rs.getString("subject_name"));
		}
		connection.close();
		return c;
	} catch (SQLException ex) {
		Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
	return c;
		
		
		
}
// them subject 
public boolean insertSubject(Subject s) {
	Connection connection = DBConnect.getConnection();
	String sql = "INSERT INTO subject(subject_name) VALUES(?)";
	try {
		PreparedStatement ps = connection.prepareCall(sql);
		ps.setString(1, s.getSubject_name());
		ps.executeUpdate();
		connection.close();
		return true;
	} catch (SQLException ex) {
		Logger.getLogger(SubjectDAO.class.getName()).log(Level.SEVERE, null, ex);
	}
	return false;
}
	
}
