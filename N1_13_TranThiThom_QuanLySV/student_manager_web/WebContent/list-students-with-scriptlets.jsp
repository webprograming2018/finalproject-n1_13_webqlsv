<%@ page import="java.util.*, com.studentManager.web.jdbc.*" %>
<!DOCTYPE html>
<html>

<head>
	<title>Student Manager Web</title>
	
	<link type="text/css" rel="stylesheet" href="css/style.css">
</head>

<%
	// get the students from the request object (sent by servlet)
	ArrayList<Student> theStudents = 
					(ArrayList<Student>) request.getAttribute("STUDENT_LIST");
%>

<body>

	<div id="wrapper">
		<div id="header">
			<h2>Student Manager</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
			<table>
			
				<tr>
					<th>Name</th>
					<th>DOB</th>
					<th>Gender</th>
					<th>Email</th>
					<th>Country</th>
					<th>Mark</th>
				</tr>
				
				<% for (Student tempStudent : theStudents) { %>
				
					<tr>
						<td> <%= tempStudent.getName() %> </td>
						<td> <%= tempStudent.getdOB() %> </td>
						<td> <%= tempStudent.getGender() %> </td>
						<td> <%= tempStudent.getEmail() %> </td>
						<td> <%= tempStudent.getCountry() %> </td>
						<td> <%= tempStudent.getMark() %> </td>
					</tr>
				
				<% } %>
				
			</table>
		
		</div>
	
	</div>
</body>


</html>








