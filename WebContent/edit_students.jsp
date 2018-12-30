<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="public/css/add.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
    <title> Sửa </title>
</head>

<%@ page import="model.Student"%>
<%@ page import="controller.StudentController"%>
<%@ page import="java.util.ArrayList"%>




<%

	StudentController getStudent = new StudentController();
	long id = Long.parseLong(request.getParameter("id"));
	Student student = getStudent.getStudentById(id);
	
%>
<body>
        <div class="container">
                <aside>
                        <div class="title">
                            
                            <h2> Admin </h2>
                        </div>
                
                        <ul class="nav">
                            <li class="nav-item"><i class="fas fa-home"></i><a href="index.jsp"> Dashboard </a>
                            <li class="nav-item"><i class="fas fa-users"></i><a href="students.jsp">   Sinh viên</a> </li>
                            <li class="nav-item"><i class="fas fa-check"></i><a href="score.jsp">    Điểm </a></li>
<!--                             <li class="nav-item"><i class="fas fa-sort"></i><a href="sort.jsp">     Thống kê  </a> </li> -->
                        
                        </ul>
                </aside> <!--sidebar-->
                <section class="title">
                    <h2> Sửa thông tin sinh viên </h2>
                    <form method="post" action="StudentController">
                        <table class="table">
                            <tr>
                                 
                                 <td>Mã sinh viên</td>
                                 <td>
                                   <input type="text" name="id" style="width:200px" >
                                 </td>
                                 
                            </tr>
                                 
                            <tr>
                                 <td>Họ tên </td>
                                 <td>
                                    <input type="text" name="name" style="width:200px" >
                                 </td>
                                
                                 
                            </tr>
                         
                            <tr>
                                 <td>Ngày sinh </td>
                                 <td>
                                   <input type="text" name="dob" style="width:200px" >
                                 </td>
                                 
                                 
                            </tr>
                            
                            <tr>
                            	<% StudentController studentController = new StudentController();
									ArrayList<Student> list = studentController.getAllStudent();
								%>
                                 <td> Giới tính </label>
                                 <td>
                                 <select name="student" id="gender" style="width:200px">
                                        <%  for(Student student : list){ %>
												<option value = "<%=student.getStudent_gender() %>"></option>
										<%} %>
                                 </select>
                                 </td>
                                 
                                 
                            </tr>
                                
                            <tr>
                                 <td> Địa chỉ </td>
                                 <td>
                                     <input type="text" name="location" style="width:200px" >
                                 </td>
                                 
                                 
                            </tr>
                             
                            <tr>
                            <input type = "hidden" name = "command" value = "edit">
                            <input type="hidden" name="id" value="<%=request.getParameter("id")%>">
                            <input type="submit" id="submit" value="Lưu">
                            </tr>
                           
                          
                         </table>
                     
                    </form>
                </section>
            </div><!-- container-->
</body>
</html>