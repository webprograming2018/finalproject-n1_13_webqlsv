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
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
    <link rel="stylesheet" href="public/css/sort.css">
    <title> Thống kê điểm sinh viên </title>
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
                            <li class="nav-item"><i class="fas fa-sort"></i><a href="sort.jsp">     Thống kê  </a> </li>
        
                        </ul>
                </aside> <!--sidebar-->

                <section>
                    <h2>  Thống kê điểm sinh viên </h2>
                    <div class="title">
                        <button> Hiển thị </button>
                        <button> Xuất ra Excel</button>
                    </div>
            
                </section>
        </div><!--container-->
</body>
</html>