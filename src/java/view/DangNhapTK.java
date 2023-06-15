/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.DBUtils;
import controller.MyUtils;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.TaiKhoan;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/loginacc"})
public class DangNhapTK extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        TaiKhoan taikhoan = new TaiKhoan();
        taikhoan.setTenTaiKhoan("");
        taikhoan.setMatKhau("");
        req.setAttribute("user", taikhoan);
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/loginForm.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String userName = req.getParameter("userName");
        String password = req.getParameter("password");
        TaiKhoan taikhoan = null;
        boolean hasError = false;
        String errorString = null;
//      Không dần kiểm tra rỗng vì html đã có thuộc tích required

        try {
            // Tìm user trong DB.
            taikhoan = DBUtils.findTaiKhoan(userName, password);

            if (taikhoan == null) {
                hasError = true;
                errorString = "Tên đăng nhập hoặc tài khoản không hợp lệ";
            }
        } catch (Exception e) {
            e.printStackTrace();
            hasError = true;
            errorString = e.getMessage();
        }
        
        // Trong trường hợp có lỗi,
        // forward (chuyển hướng) tới /WEB-INF/view/login.jsp
        if (hasError) {
            taikhoan = new TaiKhoan();
            taikhoan.setTenTaiKhoan(userName);
            taikhoan.setMatKhau(password);
 
            // Lưu các thông tin vào request attribute trước khi forward.
            req.setAttribute("errorString", errorString);
            req.setAttribute("user", taikhoan);
 
            // Forward (Chuyển tiếp) tới trang /WEB-INF/view/login.jsp
            RequestDispatcher dispatcher //
                    = this.getServletContext().getRequestDispatcher("/WEB-INF/view/loginForm.jsp");
 
            dispatcher.forward(req, resp);
        }
        // Trường hợp không có lỗi.
        // Lưu thông tin người dùng vào Session.
        // Và chuyển hướng sang trang userInfo.
        else {
            HttpSession session = req.getSession();
            MyUtils.storeLoginedUser(session, taikhoan);
//            // Redirect (Chuyển hướng) sang trang /listphone.
            resp.sendRedirect(req.getContextPath() + "/homepage");
        }
    }
}
