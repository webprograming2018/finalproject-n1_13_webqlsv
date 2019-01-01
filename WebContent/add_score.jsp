<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="public/css/addScore.css">
    <script
    src="https://code.jquery.com/jquery-3.3.1.js"
    integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
    crossorigin="anonymous"></script>
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
    <title> Thêm mới điểm sinh viên</title>
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
                <section class="title">
                    <h2> Thêm mới điểm sinh viên </h2>
                    <form action="post">
                       <table class="add">
                           <tr>
                                
                                <td> Mã sinh viên</td>
                                <td><input type="text" name="id"style="width:200px" > 
                           </tr>
                                
                           <tr>
                                <td> Họ tên </td>
                                <td> <input type="text" name="name" style="width:200px"></td>
                                
                           </tr>
                        
                           <tr>
                                <td> Mã môn </td>
                                <td><input type="text" name="idlession" style="width:200px"></td>
                                
                           </tr>
                           
                           <tr>
                                <td> Học kỳ </td>
                                <td><input type="text" name="semester" style="width:200px"> 
                           </tr>
                               
                           <tr>
                                <td> Điểm 1 </td>
                                <td> <input type="text" name="score1" style="width:200px"></td>
                                
                           </tr>
                            
                           <tr>
                               <td> Điểm 2 </td>
                                <td><input type="text" name="score2" style="width:200px"> 
                                
                           </tr>
                           <tr>
                                <td> Điểm 3 </td>
                                <td><input type="text" name="score3"style="width:200px"> 
                                
                           </tr>
                           <tr>
                            <td> Điểm TB </td>
                            <td><input type="text" name="avg" style="width:200px"> 
                            
                            </tr>
                           <tr>
                            <input type = "hidden" name = "command" value = "add">
                            <input type="submit" value="Thêm">
                           </tr>
                          
                        </table>
                    </form>
                </section>
            </div><!-- container-->
</body>
</html>