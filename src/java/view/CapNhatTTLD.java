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
import model.ThietBi;
import model.ThongTinLapDat;

/**
 *
 * @author ADMIN
 */
@WebServlet(urlPatterns = {"/updateservice"})
public class CapNhatTTLD extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idttld = req.getParameter("idttld");
        ThongTinLapDat ttld = new ThongTinLapDat();
        try {
            ttld = DBUtils.getTTLDById(idttld);
        } catch (SQLException ex) {
            System.out.println("Lỗi lấy");
            ttld.setIdTTLapDat("ERROR");
            ttld.setIdThietBi("ERROR");
            ttld.setGiaLapDat(0);
            ttld.setMoTaCongViec("ERROR");
            ThietBi thietBi = new ThietBi();
            thietBi.setTenThietBi("ERROR");
            thietBi.setHinhAnh("ERROR");
            thietBi.setGiaThietBi(0);
            ttld.setThietBi(thietBi);
        }
        
        req.setAttribute("ttld", ttld);
        
        RequestDispatcher dispatcher = this.getServletContext().getRequestDispatcher("/WEB-INF/view/capNhatTTLD.jsp");
        dispatcher.forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("utf-8");
        String action = req.getParameter("actionbt");
        String idttld = req.getParameter("idttkd");
        // cập nhật
        if (action.length()==8){
            ThongTinLapDat updatettld = new ThongTinLapDat();
            updatettld.setGiaLapDat(Float.parseFloat(req.getParameter("gialapdat")));
            updatettld.setMoTaCongViec(req.getParameter("motacongviec"));
            updatettld.setIdTTLapDat(idttld);
            try {
                DBUtils.updateTTLD(updatettld);
                req.setAttribute("error","Cập nhật thành công");
            } catch (Exception ex) {
                req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
            }
            doGet(req,resp);
        }
        //xóa
        if (action.length()==3){
            try {
                DBUtils.deleteTTLD(idttld);
                resp.sendRedirect(req.getContextPath() + "/listservice");
            } catch (SQLException ex) {
                req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
                doGet(req,resp);
            }
        }
    }
    
    
}
