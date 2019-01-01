<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="public/css/score.css">
    <script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
    <title> Điểm sinh viên </title>
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
                            <!-- <li class="nav-item"><i class="fas fa-sort"></i><a href="sort.html">     Thống kê  </a> </li> -->
                        
                        </ul>
                </aside> <!--sidebar-->
                <section>
                    <div class="title"> 
                        <h2> Quản lý điểm sinh viên </h2>
                       <button > Thống kê </button>
                        <button> Nhập từ Excel </button>
                        <button> In ra bảng điểm </button> 
                        <button>
							<a href="add_score.jsp"> Thêm mới </a>
						</button>
                        
                    </div>
                
                    <table>
                        <thead>
                            <th> ID </th>
                            <th> Họ tên </th>
                            <th> Mã môn  </th>
                            <th> Học kỳ </th>
                            <th> Điểm 1  </th>
                            <th> Điểm 2 </th>
                            <th> Điểm 3 </th>
                            <th> Điểm TB </th>
                            <th> Action </th>
                        </thead>
                        <tr>
                            <td> 1 </td>
                            <td> Trần Hoàng Nam </td>
                            <td> INT1325 </td>
                            <td> 1 </td>
                            <td> 6 </td>
                            <td> 7 </td>
                            <td> 6.5 </td>
                            <td> 6 </td>
                            <td> <a href="edit_score.jsp"> Sửa </a><a href="#"> Xóa </a></td>
                        </tr>
                       
                    
                        

                        
                    </table>
                </section><!--main content-->
        </div><!--container-->
</body>
</html>