/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TaiKhoan;

/**
 *
 * @author ADMIN
 */
public class MyUtils {
    public static final String ATT_NAME_CONNECTION = "ATTRIBUTE_FOR_CONNECTION";
    private static final String ATT_NAME_USER_NAME = "USERNAM_COOKIE";
    // Lưu trữ Connection vào attribute của request.
    // Thông tin lưu trữ này chỉ tồn tại trong thời gian yêu cầu (request)
    // cho tới khi dữ liệu được trả về trình duyệt người dùng.
//    public static void storeConnection(ServletRequest request, Connection conn) {
//        request.setAttribute(ATT_NAME_CONNECTION, conn);
//    }
//    // Lấy đối tượng Connection đã được lưu trữ trong attribute của request.
//    public static Connection getStoredConnection(ServletRequest request) {
//        Connection conn = (Connection) request.getAttribute(ATT_NAME_CONNECTION);
//        return conn;
//    }
    // Lưu trữ thông tin người dùng đã login vào Session.
    public static void storeLoginedUser(HttpSession session, TaiKhoan taiKhoanDangNhap) {
        // Trên JSP có thể truy cập thông qua ${loginedUser}
        session.setAttribute("taiKhoanDaDangNhap", taiKhoanDangNhap);
    }
 
//    // Lấy thông tin người dùng lưu trữ trong Session.
    public static TaiKhoan getLoginedUser(HttpSession session) {
        TaiKhoan taikhoandadangnhap = (TaiKhoan) session.getAttribute("taiKhoanDaDangNhap");
        return taikhoandadangnhap;
    }
//    // Lưu thông tin người dùng vào Cookie.
    public static void storeUserCookie(HttpServletResponse response, TaiKhoan tk) {
        System.out.println("Store user cookie");
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, tk.getTenTaiKhoan());
        // 1 ngày (Đã đổi ra giây)
        cookieUserName.setMaxAge(24 * 60 * 60);
        response.addCookie(cookieUserName);
    }
// 
    public static String getUserNameInCookie(HttpServletRequest request) {
        Cookie[] cookies = request.getCookies();
        if (cookies != null) {
            for (Cookie cookie : cookies) {
                if (ATT_NAME_USER_NAME.equals(cookie.getName())) {
                    return cookie.getValue();
                }
            }
        }
        return null;
    }
 
    // Xóa Cookie của người dùng
    public static void deleteUserCookie(HttpServletResponse response) {
        Cookie cookieUserName = new Cookie(ATT_NAME_USER_NAME, null);
        // 0 giây. (Cookie này sẽ hết hiệu lực ngay lập tức)
        cookieUserName.setMaxAge(0);
        response.addCookie(cookieUserName);
    }

}
