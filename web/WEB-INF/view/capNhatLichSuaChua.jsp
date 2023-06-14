<%-- 
    Document   : capNhatLichSuaChua
    Created on : Jun 12, 2023, 4:07:12 PM
    Author     : ADMIN
--%>

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
    <jsp:include page="__header.jsp"></jsp:include>
    <form action="${pageContext.request.contextPath}/updateschedule?idLich=${lichsuachua.getMaLichSuaChua()}" method="post">
        <main>  
        <div class="header_main">
            <a href="${pageContext.request.contextPath}/listschedule">
                <div class="header_name_title">
                    <i class="fa-solid fa-house"></i>
                    <span>Cập nhật lịch</span> 
                </div>
            </a>
            <div class="header_name_titlesub">
                <i class="fa-solid fa-house"></i>
                <span>Cập nhật lịch sửa chữa</span> 
            </div>
        </div>
        <div class="header_title_main">MỜI QUÝ KHÁCH CẬP NHẬT LỊCH SỬA CHỮA</div>
        <div class="note_error">
            ${error}
        </div>
        <div class="container_main_content">
            <div class="first_container_ct">
                <div class="first_container_ct_1_title">
                    THÔNG TIN KHÁCH HÀNG
                </div>
                <div class="first_container_ct_1_content">
                    <div>
                        <label for="hovaten">Họ và tên</label>
                        <input type="text" id="hovaten" name="hovaten" value="${lichsuachua.getHoTen()}">
                    </div>
                    <div>
                        <label for="sodienthoai">Số điện thoại</label>
                        <input type="text" id="sodienthoai" name="sodienthoai" value="${lichsuachua.getSoDienThoai()}">
                    </div>
                    <div>
                        <label for="thoigianlapdat">Thời gian sửa chữa</label>
                        <input type="datetime-local" id="thoigianlapdat" name="thoigianlapdat" value="${lichsuachua.getThoiGianDatTruoc()}">
                    </div>
                    <div>
                        <label for="diachicuthe">Địa chỉ cụ thể </label>
                        <input type="text" id="diachicuthe" name="diachicuthe" value="${lichsuachua.getDiaChi()}">
                    </div>
                </div>
            </div>
            <div class="second_container_ct">
                <div class="first_container_ct_1_title">
                    THÔNG TIN THIẾT BỊ
                </div>
                <div class="first_container_ct_1_content">
                    <div>
                        <label for="thietbi">Thiết bị</label>
                        <input type="text" id="thietbi" name="thietbi" value="${lichsuachua.getTenThietBi()}">
                    </div>
<!--                    <div class="first_container_ct_1_content_image">
                        <label for="hinhanh">Hình ảnh</label>
                        <input type="file" id="hinhanh">
                    </div>-->
                    <div class="first_container_ct_1_content_detail">
                        <label for="tinhtrang">Mô tả tình trạng</label>
                        <textarea id="tinhtrang" name="tinhtrang">${lichsuachua.getMoTaTinhTrang()}</textarea>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer_main_button">
            <input type="submit" class="buttonxoalich" value="XÓA LỊCH" name="actionbt">
            <input type="submit" value="CẬP NHẬT LỊCH" name="actionbt">
        </div>
    </main>
    </form>
    
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
    a{
        color: black;
        text-decoration: none;
    }
    .note_error{
        text-align: center;
    }
    .header_title_main{
    position: relative;
    text-align: center;
    margin-top: 10px;
    margin-bottom: 30px;
    font-size: 1.4rem;
    font-weight: bold;
}
.container_main_content{
    box-sizing: border-box;
    position: relative;
    width: 70%;
    margin: auto;
    margin-top: 10px;
    margin-bottom: 30px;
    display: flex;
    justify-content: center;
    gap: 60px;
}

.first_container_ct_1_title{
    font-size: 1.2rem;
    color: blue;
    font-weight: bold;
    margin-top: 20px;
    margin-bottom: 20px;
}

.first_container_ct_1_content{
    border: 1px solid black;
    width: 300px;
    padding: 20px;
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

.second_container_ct label{
    display: block;
    font-size: 0.9rem;
    margin-bottom: 5px;
    font-weight: bold;
}
.second_container_ct input{
    box-sizing: border-box;
    display: block;
    width: 100%;
    font-size: 0.9rem;
    padding: 7px 20px;
    font-weight: 600;
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
    width: 200px;
    font-size: 1rem;
    font-weight: bold;
    border: none;
    border-radius: 20px;
}

.buttonxoalich{
    background-color: red !important;
    color: white;
}

.first_container_ct_1_content_image input{
    font-size: 0.8rem;
    padding: 0;
    padding-top: 10px;
    padding-bottom: 10px;
}

.first_container_ct_1_content_detail textarea{
    box-sizing: border-box;
    width: 100%;
    font-size: 0.9rem;
    height: 100px;
    padding: 7px 20px;
}
</style>
</html>