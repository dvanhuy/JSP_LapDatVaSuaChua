/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package view;

import connect.SQLServerConnUtils_JTDS;
import controller.DBUtils;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
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
@WebServlet(urlPatterns = {"/updateschedule"})
public class CapNhatLichSuaChua extends HttpServlet{
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idLich = req.getParameter("idLich");
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        LichSuaChua lichsc = null;
        try {
            lichsc = DBUtils.getLichSCById(idLich);
        } catch (SQLException ex) {
            System.out.println("Lỗi lấy");
            lichsc.setMaLichSuaChua("ERROR");
            lichsc.setMaKhachHang("ERROR");
            lichsc.setMaNhanVien("ERROR");
            lichsc.setHoTen("ERROR");
            lichsc.setSoDienThoai("ERROR");
            lichsc.setDiaChi("ERROR");
            lichsc.setTenThietBi("ERROR");
            lichsc.setHinhAnhThietBi("ERROR");
            lichsc.setMoTaTinhTrang("ERROR");
            lichsc.setThoiGianTaoLich("ERROR");
            lichsc.setThoiGianDatTruoc("ERROR");
            lichsc.setThoiGianDuyet("ERROR");
            lichsc.setThoiGianHoanThanh("ERROR");
            lichsc.setTrangThai(-1);
            
        }
        req.setAttribute("lichsuachua", lichsc);
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/capNhatLichSuaChua.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("actionbt");
        String idLich = req.getParameter("idLich");
        // cập nhật
        if (action.length()==13){
            LichSuaChua updateLich = new LichSuaChua();
            updateLich.setMaLichSuaChua(idLich);
            updateLich.setHoTen(req.getParameter("hovaten"));
            updateLich.setSoDienThoai(req.getParameter("sodienthoai"));
            updateLich.setThoiGianDatTruoc(req.getParameter("thoigianlapdat"));
            updateLich.setDiaChi(req.getParameter("diachicuthe"));
            updateLich.setTenThietBi(req.getParameter("thietbi"));
            updateLich.setMoTaTinhTrang(req.getParameter("tinhtrang"));
            try {
                DBUtils.updateLichSuaChua(updateLich);
                req.setAttribute("error","Cập nhật thành công");
            } catch (Exception ex) {
                req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
            }
            doGet(req,resp);
        }
        //xóa
        if (action.length()==8){
            try {
                DBUtils.deleteProduct(idLich);
                resp.sendRedirect(req.getContextPath() + "/listschedule");
            } catch (SQLException ex) {
                req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
                doGet(req,resp);
            }
        }
    }
    
    
}
