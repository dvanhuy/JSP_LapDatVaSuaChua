/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import controller.DBUtils;
import java.io.IOException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.LichSuaChua;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/addservice"})
public class TaoTTLD extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/taoTTLD.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        LichSuaChua newlich = new LichSuaChua();
        newlich.setHoTen(req.getParameter("hovaten"));
        newlich.setSoDienThoai(req.getParameter("sodienthoai"));
        newlich.setThoiGianDatTruoc(req.getParameter("thoigianlapdat"));
        newlich.setDiaChi(req.getParameter("diachicuthe"));
        newlich.setTenThietBi(req.getParameter("thietbi"));
        newlich.setMoTaTinhTrang(req.getParameter("tinhtrang"));
        try {
            DBUtils.insertLichSuaChua(newlich, "TK00001");
            resp.sendRedirect(req.getContextPath() + "/listschedule");
        } catch (Exception ex) {
            req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
            doGet(req,resp);
        }
        
    }
}
