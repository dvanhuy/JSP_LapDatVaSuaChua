<%-- 
    Document   : __header
    Created on : Apr 21, 2023, 6:54:52 PM
    Author     : ADMIN
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <a href="${pageContext.request.contextPath}">
        <img src="${pageContext.request.contextPath}/image/logo.png" alt="logo">
    </a>
    <div class="header-title">Lắp đặt và sửa chữa Ba Năm</div>
    <div href="" class="nameSignIn">Tên người dùng ▼</div>
    <div class="menu_profile menu_profile_hide">
        <ul>
            <%
//                    TaiKhoan user = (TaiKhoan) request.getAttribute("user");
//                    if (user.getVaiTro().equals("Admin")){
//                        out.println("<a href="+request.getContextPath()+"/adminlist><li>Quản lý điện thoại</li></a>");
//                        out.println("<a href="+request.getContextPath()+"/adminadd><li>Thêm điện thoại</li></a>");
//                    }
            %>
            <a href="${pageContext.request.contextPath}/listschedule"><li>Cập nhật lịch</li></a>
            <a href="${pageContext.request.contextPath}/addschedule"><li>Tạo lịch</li></a>
            <a href="${pageContext.request.contextPath}/listservice"><li>Cập nhật thông tin lắp đặt</li></a>
            <a href="${pageContext.request.contextPath}/addservice"><li>Tạo mới thông tin lắp đặt</li></a>
        </ul>
    </div>
</header>
<script type="text/javascript">
    <%@include file="/WEB-INF/js/javascript.js"%>
</script>