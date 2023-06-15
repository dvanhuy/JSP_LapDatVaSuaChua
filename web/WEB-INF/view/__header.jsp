<%-- 
    Document   : __header
    Created on : Apr 21, 2023, 6:54:52 PM
    Author     : ADMIN
--%>

<%@page import="model.TaiKhoan"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<header>
    <a href="${pageContext.request.contextPath}/homepage">
        <img src="${pageContext.request.contextPath}/image/logo.png" alt="logo">
    </a>
    <div class="header-title">Lắp đặt và sửa chữa Ba Năm</div>
    <div href="" class="nameSignIn">${user.getTenTaiKhoan()} ▼</div>
    <div class="menu_profile menu_profile_hide">
        <ul>
            <%
                    TaiKhoan user = (TaiKhoan) request.getAttribute("user");
                    if (user.getLoaiTaiKhoan().equals("KhachHang")){
                        out.println("<a href='"+request.getContextPath()+"/listschedule'><li>Cập nhật lịch</li></a>");
                        out.println("<a href='"+request.getContextPath()+"/addschedule'><li>Tạo lịch</li></a>");
                    }
                    if (user.getLoaiTaiKhoan().equals("DieuPhoiVien")){
                        out.println("<a href='"+request.getContextPath()+"/listservice'><li>Cập nhật thông tin lắp đặt</li></a>");
                        out.println("<a href='"+request.getContextPath()+"/addservice'><li>Tạo mới thông tin lắp đặt</li></a>");
                    }
            %>
            <a href="${pageContext.request.contextPath}/loginacc"><li>Đăng xuất </li></a>
        </ul>
    </div>
</header>
<script type="text/javascript">
    <%@include file="/WEB-INF/js/javascript.js"%>
</script>