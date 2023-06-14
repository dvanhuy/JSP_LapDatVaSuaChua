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
    <form action="${pageContext.request.contextPath}/addschedule" method="post">
        <main>  
        <div class="header_main">
            <div class="header_name_title">
                <i class="fa-solid fa-house"></i>
                <span>Tạo lịch</span> 
            </div>
        </div>
        <div class="header_title_main">MỜI QUÝ KHÁCH TẠO LỊCH SỬA CHỮA</div>
        <div class="note_error">
            ${error}
        </div>
        
        <div class="container_main_content">
            <div class="first_container_ct">
                <div class="subnav_item " id="lapdatnav">
                    Lịch lắp đặt
                </div>
                <div class="subnav_item choose_nav" id="suachuanav">
                    Lịch sửa chữa
                </div>
            </div> 
            <div class="second_container_ct">
                <div class="container_main_content_sub">
                    <div class="first_container_ct_sub">
                        <div class="first_container_ct_sub_1_title">
                            THÔNG TIN KHÁCH HÀNG
                        </div>
                        <div class="first_container_ct_sub_1_content">
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
                    <div class="second_container_ct_sub">
                        <div class="first_container_ct_sub_1_title">
                            THÔNG TIN THIẾT BỊ
                        </div>
                        <div class="first_container_ct_sub_1_content">
                            <div>
                                <label for="thietbi">Thiết bị</label>
                                <input type="text" id="thietbi" name="thietbi" value="${lichsuachua.getTenThietBi()}">
                            </div>
        <!--                    <div class="first_container_ct_sub_1_content_image">
                                <label for="hinhanh">Hình ảnh</label>
                                <input type="file" id="hinhanh">
                            </div>-->
                            <div class="first_container_ct_sub_1_content_detail">
                                <label for="tinhtrang">Mô tả tình trạng</label>
                                <textarea id="tinhtrang" name="tinhtrang">${lichsuachua.getMoTaTinhTrang()}</textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer_main_button">
                    <input type="submit" value="TẠO LỊCH" name="actionbt">
                </div>
            </div> 
        </div>
        
    </main>
    </form>
    
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
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
.container_main_content_sub{
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

.first_container_ct_sub_1_title{
    font-size: 1.2rem;
    color: blue;
    font-weight: bold;
    margin-top: 20px;
    margin-bottom: 20px;
}

.first_container_ct_sub_1_content{
    border: 1px solid black;
    width: 300px;
    padding: 20px;
    display: flex;
    flex-direction: column;
    gap: 20px;
}
.first_container_ct_sub label{
    display: block;
    font-size: 0.9rem;
    margin-bottom: 5px;
    font-weight: bold;
}
.first_container_ct_sub input{
    box-sizing: border-box;
    display: block;
    width: 100%;
    font-size: 0.9rem;
    padding: 7px 20px;
    font-weight: 600;
}

.second_container_ct_sub label{
    display: block;
    font-size: 0.9rem;
    margin-bottom: 5px;
    font-weight: bold;
}
.second_container_ct_sub input{
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
    margin-bottom: 10px;
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

.first_container_ct_sub_1_content_image input{
    font-size: 0.8rem;
    padding: 0;
    padding-top: 10px;
    padding-bottom: 10px;
}

.first_container_ct_sub_1_content_detail textarea{
    box-sizing: border-box;
    width: 100%;
    font-size: 0.9rem;
    height: 100px;
    padding: 7px 20px;
}
.container_main_content{
    box-sizing: border-box;
    position: relative;
    width: 80%;
    max-width: 1000px;
    margin: auto;
    margin-top: 10px;
    margin-bottom: 30px;
    display: grid;
    grid-template-columns: 150px calc(100% - 200px);
    grid-template-rows: 1fr;
    transform: translateX(-40px);
}

#suachuanav{
    border-top: none;
}

.subnav_item{
    border: 1px solid black;
    padding: 15px 0px;
    padding-left: 20px;
    border-top-left-radius: 20px;
    border-bottom-left-radius: 20px;
    font-weight: bold;
    background-color: rgb(243, 243, 243);
    cursor: pointer;
}

.choose_nav{
    background-color: #5AABD9;
    border-right: none;
}

.first_container_ct{
    transform: translateX(1px);
}

.second_container_ct{
    border: 1px solid black;
    padding: 20px;
}
</style>
<script>
    const button = document.getElementsByClassName("subnav_item")
    for (const item of button) {
        item.onclick = () =>{
            for (const item2 of button) {
                item2.classList.remove("choose_nav")
            }
            item.classList.add("choose_nav")
        }
    }
</script>
</html>