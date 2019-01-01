<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
 <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <script
  src="https://code.jquery.com/jquery-3.3.1.js"
  integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
  crossorigin="anonymous"></script>
  <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" integrity="sha384-B4dIYHKNBt8Bc12p+WXckhzcICo0wtJAoU8YZTY5qE0Id1GSseTk6S+L3BlXeVIU" crossorigin="anonymous">
  <link rel="stylesheet" href="public/css/index.css">
  <title> Dashboard </title>
</head>
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
<!--                             <li class="nav-item"><i class="fas fa-sort"></i><a href="sort.jsp">     Thống kê  </a> </li>  -->
        
                        </ul>
     <form action="Logout">
		<input type="submit" value="Logout" class="log out">
	</form>
    
                </aside> <!--sidebar-->

                <section>
                    <h2>  Chào mừng tới quản lý sinh viên </h2>
                </section>
    </div><!--container-->
	
</body>
</html>