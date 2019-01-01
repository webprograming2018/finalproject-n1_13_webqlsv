package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.StudentDAO;
import model.Student;


/**
 * Servlet implementation class StudentController
 */
@WebServlet("/StudentController")
public class StudentController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StudentController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		String command = request.getParameter("command");
		if(command.equals("delete")) {
			long  id = Long.parseLong(request.getParameter("id"));
			StudentDAO studentsDAO = new StudentDAO();
			Student student = new Student();
			student.setStudent_id(id);
			try {
				
				student.deleteStudentById(id);
				response.sendRedirect("students.jsp");
			}catch(Exception e) {
				e.printStackTrace();
			}
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");
		if(request.getParameter("command")!=null) {
			StudentDAO studentDAO = new StudentDAO();
			Student student = new Student();
			String command = request.getParameter("command");
			ArrayList<String> error = new ArrayList<>();
			
			// kiểm tra hợp lệ
			String id = request.getParameter("id");
			String name = request.getParameter("name");
			String dob = request.getParameter("dob");
			String gender = request.getParameter("gender");
			String location = request.getParameter("location");
			
		    if(id.length()<1) {
				error.add("Mã sinh viên đã tồn tại");
			}
		    if(name.length()<1) {
		    	error.add("Chưa nhập tên sinh viên");
		    }
			if(name.length()>255) {
				error.add("Tên sinh viên dài quá 255 ký tự");
			}
		     if(dob.length()<1) {
		    	 error.add("Chưa nhập ngày tháng năm sinh");
		     }
		     if(dob.length()>255) {
		    	 error.add("Sai định dạng ngày sinh");
		    	 
		     }
		     if(gender==null) {
		    	 error.add("Chưa chọn giới tính");
		     }
		     if(location.length()<1) {
		    	 error.add("Chưa nhập địa chỉ");
		     }
		     if(location.length()>255) {
		    	 error.add("Địa chỉ dài quá 255 ký tự");
		     }else {
		    	 
		    	 
		    	 
		    	 
		   switch(command) {
		   case "add":
			   if(error.isEmpty()) {
					student.setStudent_id(Long.parseLong(request.getParameter("id")));
					student.setStudent_name(name);
					student.setStudent_birthday(dob);
					student.setStudent_gender(gender);
					student.setStudent_location(location);
					
					try {
//						
						student.insertStudent(student);
						response.sendRedirect("student.jsp");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					}else {
						
						response.sendRedirect("add_students.jsp");
					}
					break;
		   case "edit":
			   long id1 = Long.parseLong(request.getParameter("id"));
			   if(error.isEmpty()) {
					student.setStudent_id(Long.parseLong(request.getParameter("id")));
					student.setStudent_name(name);
					student.setStudent_birthday(dob);
					student.setStudent_gender(gender);
					student.setStudent_location(location);
					
					try {
//						
						student.insertStudent(student);
						response.sendRedirect("student.jsp");
					} catch (SQLException e) {
						// TODO Auto-generated catch block
						e.printStackTrace();
					}
					}else {
						
						response.sendRedirect("edit_students.jsp");
					}
					break;
		   }
		 }
	}     
}	     	     
	
	
	public ArrayList<Student> getAllStudent() throws SQLException {
		StudentDAO studentDAO = new StudentDAO();
		return studentDAO.getAllStudent();
	}
	
	public Student getStudentById(long id) throws SQLException {
		StudentDAO studentDAO = new StudentDAO();
		return studentDAO.getStudentById(id);
	}

}
