<%-- 
    Document   : capNhatLichSuaChua
    Created on : Jun 12, 2023, 4:07:12 PM
    Author     : ADMIN
--%>

<%@page import="java.util.List"%>
<%@page import="model.LichSuaChua"%>
<%@page import="controller.DBUtils"%>
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
    <main>
        <div class="header_main">
            <div class="header_name_title">
                <i class="fa-solid fa-house"></i>
                <span>Cập nhật lịch</span> 
            </div>
        </div>
        <div class="header_title_main">
            Cập nhật lịch đã tạo
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
                <div class="list_item_list">
                <%
                    List<LichSuaChua> listLichSC = null;
                    try {
                        listLichSC = DBUtils.getAllLichSuaChua();
                    } catch (Exception e) {
                        System.out.println("Lõi tại lấy lịch");
                    }
                    for (LichSuaChua lichSuaChua : listLichSC) {
                        String itemlich = ""
                        +"<div class='item_lich'>"
                            + "<div class='item_lich_content'>"
                                + "<div>Họ tên: "+lichSuaChua.getHoTen()+"</div>"
                                + "<div>SDT: "+lichSuaChua.getSoDienThoai()+"</div>"
                                + "<div>Địa chỉ: "+lichSuaChua.getDiaChi()+"</div>"
                                + "<div>Tên thiết bị: "+lichSuaChua.getTenThietBi()+"</div>"
                                + "<div>Mô tả tình trạng: "+lichSuaChua.getMoTaTinhTrang()+"</div>"
                                + "<div>Ngày đặt: "+lichSuaChua.getThoiGianDatTruoc()+"</div>"
                            + "</div>"
                            + "<div class='item_lich_confirm'>"
                                + "<div class='item_lich_confirm_title'>Đang chờ phê duyệt</div>"
                                + "<a href="+request.getContextPath()+"/updateschedule?idLich="+lichSuaChua.getMaLichSuaChua()+">"
                                    + "<div class='item_lich_confirm_image'>"
                                        + "<img src='"+request.getContextPath()+"/image/bantay.png'>"
                                    + "</div>"
                                + "</a>"
                                + "<div class='item_lich_confirm_text'>Cập nhật</div>"
                            + "</div>"    
                        + "</div>"
                        ;
                        out.println(itemlich);
                    }
                %>
                </div>
            </div> 
        </div>
    </main>
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
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
    width: 80%;
    max-width: 1000px;
    margin: auto;
    margin-top: 10px;
    margin-bottom: 30px;
    display: grid;
    grid-template-columns: 150px calc(100% - 200px);
    grid-template-rows: 1fr;
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
.list_item_list{
    display: flex;
    flex-direction: column;
    gap: 20px;
}

.item_lich{
    position: relative;
    box-sizing: border-box;
    border: 2px solid black;
    width: 100%;
    border-radius: 20px;
}
.item_lich:hover{
    box-shadow: rgba(0, 0, 0, 0.24) 0px 3px 8px;
}

.item_lich_content{
    position: relative;
    margin-right: 170px;
    overflow: hidden;
    padding: 20px 0px 20px 30px;
    line-height: 25px;
}

.item_lich_confirm{
    position: absolute;
    top: 0;
    right: 15px;
    height: 100%;
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: center;
}
.item_lich_confirm_title{
    color: red;
    font-weight: bold;
    margin-bottom: 10px;
}
.item_lich_confirm_image{
    cursor: pointer;
}

.item_lich_confirm_image img{
    height: 70px;
    width: auto;
}

.item_lich_confirm_text{
    font-size: 0.9rem;
}
.button_cancel{
    margin-top: 10px;
    cursor: pointer;
    background-color: #3719F0;
    width: 80px;
    height: 30px;
    display: flex;
    gap: 5px;
    align-items: center;
    justify-content: center;
    border-radius: 15px;
}
.button_cancel span {
    color: white;
}
.button_cancel i{
    width: 20px;
    height: 20px;
    font-size: 16px;
    text-align: center;
    line-height: 20px;
    border-radius: 50%;
    background-color: rgb(238, 238, 238);
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