<%@ page pageEncoding="utf-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<link rel="stylesheet" href="public/css/login.css">
<title>Đăng nhập</title>
</head>

<body>

	<section>
        <div class="container">
            <div class="login-form">
                <h1> Admin </h1>
                <form action="UserController" method="POST">
                    <input type="text" name="username" >
                    <input type="password" name="password">
                    <input type="submit" value="Login ">
                </form>
                
            </div>
        </div>
    </section>
</body>
</html>