<%@ page pageEncoding="utf-8"%>
<%-- <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="public/css/students.css">
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"
	integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU"
	crossorigin="anonymous">
<title>Sinh viên</title>
</head>


<%@ page import="model.Student"%>
<%@ page import="controller.StudentController"%>
<%@ page import="java.util.ArrayList"%>

<%
	StudentDAO studentDAO = new StudentDAO();
	Student student = new Student();
	ArrayList<Student> list = new StudentDAO().getAllStudent(); 
%>

<body>
	<div class="container">
		<aside>
			<div class="title">

				<h2>Admin</h2>
			</div>

			<ul class="nav">
				<li class="nav-item"><i class="fas fa-home"></i><a
					href="index.jsp"> Dashboard </a>
				<li class="nav-item"><i class="fas fa-users"></i><a
					href="students.jsp"> Sinh viên</a></li>
				<li class="nav-item"><i class="fas fa-check"></i><a
					href="score.jsp"> Điểm </a></li>
				<li class="nav-item"><i class="fas fa-sort"></i><a
					href="sort.jsp"> Thống kê </a></li>

			</ul>
		</aside>
		<!--sidebar-->
		<section>
			<div class="title">
				<h2>Quản lý sinh viên</h2>
				<button>
					<a href="add_students.jsp"> Thêm mới </a>
				</button>
			</div>

			<table class="table">
				<thead>
					<th>ID</th>
					<th>Họ tên</th>
					<th>Ngày sinh</th>
					<th>Giới tính</th>
					<th>Địa chỉ</th>
					<th>Action</th>
				</thead>
				
				<tbody>
					<%
						for(Student student :list){
					%>
				<tr>
					<td><%= student.getStudent_id() %></td>
					<td><%= student.getStudent_name() %></td>
					<td><%= student.getStudent_birthday() %></td>
					<td><%= student.getStudent_gender() %></td>
					<td><%= student.getStudent_location() %></td>
					
					<td>
						<a href="/edit_students.jsp?id=<%=student.getStudent_id()%>"> Sửa </a>
						<a href="/StudentController?command=delete&id=<%=student.getStudent_id()%>" onclick="javascript:return confirm('Bạn chắc muốn xóa sinh viên này chứ?')"> Xóa </a>
					</td>
				</tr>
				<%
					} %>
				</tbody>
				
			</table>
		</section>
	</div>
</body>
</html>

