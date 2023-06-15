<%-- 
    Document   : loginForm
    Created on : Apr 11, 2023, 2:19:11 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
    <div class="conter">
        <h1>Login</h1>
        <form action="${pageContext.request.contextPath}/loginacc" method="post">
            <div class="txt_field">
                <input type="text" name="userName" required value="${user.getTenTaiKhoan()}">
                <span></span>
                <label >UserName</label>
            </div>
            <div class="txt_field">
                <input type="password" name="password" required value="${user.getMatKhau()}">
                <span></span>
                <label >Password</label>
            </div>
            <div class="error">${errorString}<div>
            
            <input type ="checkbox" name="rememberMe" id="remember" value= "Y"/>
            <label for="remember">Nhớ mật khẩu</label>
            <input type="submit" value="Login">
            <div class="signup_link">
                No a member? 
                <a href="#">Sign up</a>
            </div>
        </form>
    </div>
</body>
<style>
    @import url('https://fonts.googleapis.com/css2?family=Montserrat&family=Poppins:wght@500&display=swap');
body{
    margin: 0;
    padding: 0;
    font-family: montserrat ;
    background: linear-gradient(120deg,#2980b9, #8e44ad);
    height: 100vh;
    overflow: hidden;
}
.conter{
    position: absolute;
    top:50%;
    left: 50%;
    transform: translate(-50%, -50%);
    width: 400px;
    background: white;
    border-radius: 10px;
}
.conter h1{
    text-align: center;
    padding: 0 0 20px 0;
    border-bottom: 1px solid silver;
}
.conter form{
    padding: 0 40px;
    box-sizing: border-box;
}
form .txt_field{
    position: relative;
    border-bottom: 2px solid #adadad;
    margin: 30px 0;
}
.txt_field input{
    width: 100%;
    padding:  0 5px;
    height: 40px;
    font-size: 16px;
    border: none;
    background: none;
    outline: none;
}

.txt_field label{
    position: absolute;
    top: 50%;
    left: 5px;
    color: #adadad;
    transform: translateY(-50%);
    font-size: 16px;
    pointer-events: none;
    transition: .5s;
}

.txt_field span::before{
    content: '';
    position: absolute;
    top: 40px;
    left: 0;
    width: 0%;
    height: 2px;
    background: #2691d9;
    transition: .5s;

}
.txt_field input:focus ~ label,
.txt_field input:valid ~ label{
    top: -5px;
    color: #2691d9;
}
.txt_field input:focus ~ span::before,
.txt_field input:valid ~ span::before{

    width: 100%;
}
.error{
    margin: -20px 0 5px 5px;
    color: red;
    font-size: 13px;
    cursor: pointer;
}

#remember{
    width: 17px;
    height: 17px;
    margin: 5px 5px 15px 0px; 
    transform: translateY(2px);
}
#remember + label{
    color: #737373;
}

input[type="submit"]{
    width: 100%;
    height: 50px;
    border: 1px solid;
    background: #2691d9;
    border-radius: 25px;
    font-size: 18px;
    color: #e9f4fb;
    font-weight: 700;
    cursor: pointer;
    outline: none;
}
input[type="submit"]:hover{
    border-color: #2691d9
    /*transparent 0.5s;*/
}
.signup_link{
    margin: 30px;
    text-align: center;
    font-size: 16px;
    color: #666666;
}
.signup_link a{
    color: #2691d9;
    text-decoration: none;
}
.signup_link a:hover{
    text-decoration: underline;
}
</style>
</html>