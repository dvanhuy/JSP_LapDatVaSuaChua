<%-- 
    Document   : capNhatLichSuaChua
    Created on : Jun 12, 2023, 4:07:12 PM
    Author     : ADMIN
--%>

<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Công ty Ba Năm</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
    <%
        DecimalFormat df = new DecimalFormat("###,###,###");
    %>
    <jsp:include page="__header.jsp"></jsp:include>
    <form action="${pageContext.request.contextPath}/updateservice?idttld=${ttld.getIdTTLapDat()}" method="post">
        <main>
            <div class="header_main">
                <a href="${pageContext.request.contextPath}/listservice">
                    <div class="header_name_title">
                        <i class="fa-solid fa-house"></i>
                        <span>Cập nhật TTLD</span> 
                    </div>
                </a>   
                <div class="header_name_titlesub">
                    <i class="fa-solid fa-house"></i>
                    <span>Cập nhật thông tin lắp đặt</span> 
                </div>
            </div>
            <div class="header_title_main">Cập nhật thông tin lắp đặt</div>
            <div class="note_error">
            ${error}
            </div>
            <div class="container_main_content">
                <div class="first_container_ct">
                    <div>
                        <label for="thietbi">Thiết bị</label>
                        <input type="text" id="thietbi" name="thietbi" disabled="true" value="${ttld.getThietBi().getTenThietBi()}">
                    </div>
                    <div class="more_info_box">
                        <div class="infor_image">
                            <img src="${pageContext.request.contextPath}/image/${ttld.getThietBi().getHinhAnh()}">
                        </div>
                        <div class="infor_text">
                            <div>Tên thiết bị: ${ttld.getThietBi().getTenThietBi()}</div>
                            <div>Giá: ${df.format(Double.valueOf(ttld.getThietBi().getGiaThietBi()))} VNĐ</div>
                        </div>
                    </div>
                    <div>
                        <label for="giathietbi">Giá lắp đặt</label>
                        <input type="text" id="gialapdat" name="gialapdat" value="${ttld.getGiaLapDat()}">
                    </div>
                    <div>
                        <label for="motacongviec">Mô tả công việc</label>
                        <textarea id="motacongviec" name="motacongviec">${ttld.getMoTaCongViec()}</textarea>
                    </div>
                </div>
            </div>

            <div class="footer_main_button">
                <input type="submit" class="buttonxoalich" value="XÓA" name="actionbt">
                <input type="submit" value="CẬP NHẬT" name="actionbt">
            </div>
        </main>
    </form>
    
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
    .header_title_main{
    position: relative;
    text-align: center;
    margin-top: 10px;
    margin-bottom: 20px;
    font-size: 1.4rem;
    font-weight: bold;
}
.container_main_content{
    box-sizing: border-box;
    position: relative;
    width: 400px;
    margin: auto;
    margin-top: 10px;
    margin-bottom: 30px;
    display: flex;
    justify-content: center;
    gap: 20px;
    flex-direction: column;
    overflow: hidden;
}

.footer_main_button{
    display: flex;
    justify-content: center;
    margin-bottom: 30px;
    gap: 50px;
}
.footer_main_button input{
    background-color: #9AFF8A;
    padding: 15px 20px 10px 20px;
    width: 150px;
    font-size: 1rem;
    font-weight: bold;
    border: none;
    border-radius: 20px;
}

.buttonxoalich{
    background-color: red !important;
    color: white;
}

.first_container_ct{
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.first_container_ct label{
    display: block;
    font-size: 0.9rem;
    margin-bottom: 5px;
    font-weight: bold;
}
.first_container_ct input{
    box-sizing: border-box;
    display: block;
    width: 100%;
    font-size: 0.9rem;
    padding: 7px 20px;
    font-weight: 600;
}

.first_container_ct textarea{
    box-sizing: border-box;
    width: 100%;
    font-size: 0.9rem;
    height: 100px;
    padding: 7px 20px;
}

.more_info_box{
    border: 1px solid black;
    display: flex;
    align-items: center;
    overflow: hidden;
    gap:30px;
}

.infor_image{
    height:80px;
    display:flex;
    width: 130px;
    align-self: center;
    justify-content: center;
    overflow: hidden;
}
.infor_image img{
    height:80px;
    width: auto;    
}
.infor_text{
    font-size: 0.9rem;
    line-height: 22px;
}

a{
    text-decoration: none;
    color: black;
}
.note_error{
        text-align: center;
    }
</style>
</html>