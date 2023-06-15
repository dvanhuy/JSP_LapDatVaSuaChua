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
import model.ThongTinLapDat;

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
        ThongTinLapDat newttld = new ThongTinLapDat();
        if (req.getParameter("tenthietbi").equals("") || req.getParameter("gialapdat").equals("") || req.getParameter("motacongviec").equals("")){
            req.setAttribute("error","Nhập đầy đủ thông tin");
            doGet(req,resp);
        }
        else {
            newttld.setIdThietBi(req.getParameter("tenthietbi"));
            newttld.setGiaLapDat(Float.parseFloat(req.getParameter("gialapdat")));
            newttld.setMoTaCongViec(req.getParameter("motacongviec"));
            try {
                DBUtils.insertTTLD(newttld);
                resp.sendRedirect(req.getContextPath() + "/listservice");
            } catch (Exception ex) {
                req.setAttribute("error","Đã xảy ra lỗi "+ex+". Vui lòng thử lại");
                doGet(req,resp);
            }
        }
    }
}
