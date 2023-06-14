<%@page import="java.text.DecimalFormat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Chi tiết điện thoại</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" />
    <style><%@include file="/WEB-INF/css/style.css"%></style>
</head>
<body>
    <jsp:include page="__header.jsp"></jsp:include>
    <div class="banner">
        <img src="${pageContext.request.contextPath}/image/banner.png" alt="banner">
    </div>
    <main>
        <div class="header_main">
            <div class="header_name_title">
                <i class="fa-solid fa-house"></i>
                <span>Trang chủ</span> 
            </div>
            <div class="header_name_search">
                <label for="order">Sắp xếp theo : </label>
                <select name="order" id="order">
                    <option value="">Giá tăng dần</option>
                    <option value="">Giá giảm dần</option>
                    <option value="">Mới cập nhật</option>
                    <option value="">Cũ nhất</option>
                </select>
                <label for="search" id="search_input_lable">Tìm kiếm </label>
                <input type="text" name="" id="search_input" placeholder="Thiết bị cần tìm kiếm">
                <button id="button_search"><i class="fa-solid fa-magnifying-glass"></i></button>
            </div>
        </div>
        <div class="container_main">
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://cdn.tgdd.vn/Files/2022/09/26/1472172/phan-biet-ram-laptop-va-ram-pc-1.jpg" alt="">
                </div>
                <div class="item_name">
                    RAM Laptop Samsung 8GB DDR4 Bus 3200 - Hàng Nhập Khẩu
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
            <div class="container_main_item">
                <div class="item_image">
                    <img src="https://hoanghapc.vn/media/news/0412_ram-la-gi-1.jpg" alt="">
                </div>
                <div class="item_name">
                    Ram máy tính
                </div>
                <div class="item_price">
                    1.000.000 VNĐ
                </div>
                <div class="item_subprice">
                    Giá lắp đặt: 50.000 VNĐ
                </div>
            </div>
        </div>
        <div class="footer_main">
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#">1</a>
                <a class="active" href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">5</a>
                <a href="#">6</a>
                <a href="#">&raquo;</a>
              </div>
        </div>
    </main>
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
    main{
    position: relative;
}
.header_name_title{
    position: relative;
    margin-top: 30px;
    margin-left: 50px;
    width: 150px;
    background-color: #86f1ff;
    margin-bottom: 20px;
    display: inline-block;
    height: 40px;
    box-sizing: border-box;
    line-height: 40px;
}
.header_name_titlesub{
    position: relative;
    margin-top: 30px;
    margin-left: 20px;
    padding-right: 20px ;
    height: 40px;
    box-sizing: border-box;
    background-color: #86f1ff;
    margin-bottom: 20px;
    padding-left: 20px;
    display: inline-block;
    line-height: 40px;
}
.header_name_titlesub::after{
    position: absolute;
    content: "";
    clip-path: polygon(0 0, 100% 0, 100% 100%, 0 100%, 100% 50%);
    background-color: #86f1ff;
    height: 40px;
    width: 20px;
    top: 0px;
    left: -19px;
}
.header_name_title::before,.header_name_titlesub::before{
    position: absolute;
    content: "";
    width: 0px;
    height: 0px;
    border-left: 20px solid #86f1ff;
    border-top: 20px solid transparent;
    border-bottom: 20px solid transparent;
    top: 0px;
    right: -19px;
}
.header_name_title i{
    margin-left: 20px;
    margin-right: 10px;
}

.header_name_search{
    background-color: rgb(245, 245, 245);
    width: 93%;
    margin: auto;
    padding: 20px;
}
.header_name_search select{
    margin-left: 10px;
    font-size: 0.95rem;
    padding: 5px;
}

#search_input_lable{
    margin-left: 30px;
}

#search_input{
    margin-left: 10px;
    font-size: 0.95rem;
    padding: 5px;
}
#button_search{
    width: 30px;
    height: 30px;
    border-radius: 50%;
    margin-left: 10px;
    border: 1px solid black;
}
#button_search:hover{
    background-color: rgb(180, 180, 180);
}

.footer_main{
    text-align: center;
    margin-top: 20px;
    margin-bottom: 30px;
}

.pagination {
  display: inline-block;
}

.pagination a {
  color: black;
  float: left;
  padding: 8px 16px;
  text-decoration: none;
}

.pagination a.active {
  background-color: #4CAF50;
  color: white;
}

.pagination a:hover:not(.active) {background-color: #ddd;}

.container_main{
    padding: 20px;
    width: 93%;
    margin: auto;
    background-color: rgb(245, 245, 245);
    display: grid;
    gap: 20px;
    grid-template-columns: repeat(6,1fr);
}

.container_main_item{
    width: 100%;
    background-color: white;
    border: 1px solid rgb(217, 217, 217);
    display: flex;
    flex-direction: column;
    gap: 10px;
    align-items: center;
    overflow: hidden;
    padding-bottom: 10px;
    cursor: pointer;
}
.container_main_item:hover{
    box-shadow: rgba(66, 66, 68, 0.2) 0px 7px 29px 0px;
}
.container_main_item .item_image{
    overflow: hidden;
    width: 100%;
    height: 150px;
    display: flex;
    align-items: center;
    justify-content: center;
}
.container_main_item .item_image img{
    height: 150px;
}

.container_main_item .item_name{
    font-size: 0.95rem;
    text-align: justify;
    padding-left: 20px;
    padding-right: 20px;
}

.container_main_item .item_price{
    color: red;
    font-size: 1.1rem;
}

.container_main_item .item_subprice{
    color: rgb(96, 96, 96);
    font-size: 0.8rem;
}

</style>
<script type="text/javascript"><%@include file="/WEB-INF/js/javascript.js"%></script>
</html> 