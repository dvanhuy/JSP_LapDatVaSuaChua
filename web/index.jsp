
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <header>
        <img src="${pageContext.request.contextPath}/image/logo.png" alt="logo">
        <div class="header-title">Lắp đặt và sửa chữa Ba Năm    </div>
        <a href="${pageContext.request.contextPath}/login" class="buttonSignIn">Đăng nhập</a>  
    </header>
    <div class="banner">
            <img src="${pageContext.request.contextPath}/image/banner.png" alt="banner">
    </div>
    <main>

    </main>
</body>
<style>
@import url('https://fonts.googleapis.com/css2?family=Josefin+Sans:wght@600&display=swap');

*{
    margin:0;
    padding: 0;
}
header{
    position: relative;
    background-color: rgb(255, 252, 248);
    height: 70px;
    width: 100%;
    display: flex;
    align-items: center;
}
header img{
    width: auto;
    height: 60px;
    margin-left: 30px;
}

header .header-title{
    font-size: 1.3rem;
    margin-left: 10px;
    text-transform: uppercase;
    font-family: 'Josefin Sans', sans-serif;
}

.banner{
    height: 250px;
}

.banner img{
    width: 100%;
    height:100%;
}

.buttonSignIn{
    position: absolute;
    text-decoration: none;
    font-size: 1.2rem;
    right: 30px;
    padding: 10px 20px;
    border-radius: 20px;
    background-color: cornflowerblue;
    font-family: 'Josefin Sans', sans-serif;
    color: white;
}
</style>
</html> 