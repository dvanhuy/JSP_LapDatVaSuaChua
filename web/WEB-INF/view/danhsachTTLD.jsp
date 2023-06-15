<%@page import="java.util.List"%>
<%@page import="model.ThongTinLapDat"%>
<%@page import="controller.DBUtils"%>
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
    <main>
        <div class="header_main">
            <a href="${pageContext.request.contextPath}/listservice">
                <div class="header_name_title">
                    <i class="fa-solid fa-house"></i>
                    <span>Cập nhật TTLD</span> 
                </div>
            </a>
            <div class="header_name_search">
                <form action="${pageContext.request.contextPath}/listservice" method="get">
                    <label for="order">Sắp xếp theo : </label>
                    <select name="order" id="order" >
                        <option value="desc" selected="selected">Mới cập nhật</option>
                        <option value="asc">Cũ nhất</option>
                    </select>
                    <label for="search" id="search_input_lable">Tìm kiếm </label>
                    <input type="text" name="keysearch" id="search_input" placeholder="Thiết bị cần tìm kiếm">
                    <input type="submit" value="Tìm" id="button_search">
                <form/>
            </div>
        </div>
        <div class="container_main">
            <%
                DecimalFormat df = new DecimalFormat("###,###,###");
                String order = request.getParameter("order");
                String keysearch = request.getParameter("keysearch");
                if(order==null){
                    order = "desc";
                }
                if(keysearch==null){
                    keysearch = "";
                }
                int pagenumber = 1;
                if (request.getParameter("pagenb")!=null){
                    pagenumber = Integer.parseInt(request.getParameter("pagenb")); 
                };
                List<ThongTinLapDat> listttld = null;
                try {
                    listttld = DBUtils.get24ServiceByPage(pagenumber,order,keysearch);
                } catch (Exception e) {
                    System.out.println("Lõi tại lấy danh sách");
                }
                for (ThongTinLapDat ttld : listttld) {
                    String itemttld = ""
                    + "<a class='container_main_item' href="+request.getContextPath()+"/updateservice?idttld="+ttld.getIdTTLapDat()+">"
                            + "<div class='item_image'>"
                                + "<img src='"+request.getContextPath()+"/image/"+ttld.getThietBi().getHinhAnh()+"' >"
                            + "</div>"
                            + "<div class='item_name'>"+ttld.getThietBi().getTenThietBi()+"</div>"
                            + "<div class='item_price'>"+df.format(Double.valueOf(ttld.getThietBi().getGiaThietBi()))+"</div>"
                            + "<div class='item_subprice'>Giá lắp đặt: "+df.format(Double.valueOf(ttld.getGiaLapDat()))+" VNĐ</div>"
                    + "</a>";
                    out.println(itemttld);
                }
            %>
        </div>
        <div class="footer_main">
            <div class="pagination">
                <%
                    out.print("<a href='"+request.getContextPath()+"/listservice?order="+order+"&keysearch="+keysearch+"&pagenb=1'>&laquo;</a>");
                    int lenghtpage = DBUtils.getLengthService(order,keysearch);
                    int forloopnb = lenghtpage/24;
                    if (lenghtpage%24>0){
                        forloopnb+=1;
                    }
                    for (int i = 0; i < forloopnb; i++) {
                        if (pagenumber==(i+1)){
                            out.print("<a class='active' href='"+request.getContextPath()+"/listservice?order="+order+"&keysearch="+keysearch+"&pagenb="+(i+1)+"'>"+(i+1)+"</a>");
                        }
                        else{
                            out.print("<a href='"+request.getContextPath()+"/listservice?order="+order+"&keysearch="+keysearch+"&pagenb="+(i+1)+"'>"+(i+1)+"</a>");
                        }
                    }
                    out.print("<a href='"+request.getContextPath()+"/listservice?order="+order+"&keysearch="+keysearch+"&pagenb="+forloopnb+"'>&raquo;</a>");
                %>
              </div>
        </div>
    </main>
    <jsp:include page="__footer.jsp"></jsp:include>
</body>
<style>
    a{
        padding: 0;
        margin: 0;
        text-decoration: none;
    }
    main{
    position: relative;
}
.header_name_title{
    position: relative;
    margin-top: 30px;
    margin-left: 50px;
    padding-right: 15px;
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
    box-sizing: content-box;
    margin-left: 10px;
    font-size: 0.95rem;
    padding: 5px;
    text-align: center;
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
    padding: 5px 10px;
    margin-left: 20px;
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
a{
    text-decoration: none;
    color: black;
}

</style>
<script type="text/javascript"><%@include file="/WEB-INF/js/javascript.js"%></script>
</html> 