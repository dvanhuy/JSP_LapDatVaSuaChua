
package controller;

import connect.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import model.LichSuaChua;

public class DBUtils {
    public static List<LichSuaChua> getAllLichSuaChua() throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "select *\n" +
                    "from LichSuaChua \n" +
                    "where trangThai in (-1,0)";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<LichSuaChua> listresult = new ArrayList<>();
        while (rs.next()) {
            LichSuaChua lichsc = new LichSuaChua();
            lichsc.setMaLichSuaChua(rs.getString("maLichSuaChua"));
            lichsc.setMaKhachHang(rs.getString("maKhachHang"));
            lichsc.setMaNhanVien(rs.getString("maNhanVien"));
            lichsc.setHoTen(rs.getString("hoTen"));
            lichsc.setSoDienThoai(rs.getString("soDienThoai"));
            lichsc.setDiaChi(rs.getString("diaChi"));
            lichsc.setTenThietBi(rs.getString("tenThietBi"));
            lichsc.setHinhAnhThietBi(rs.getString("hinhAnhThietBi"));
            lichsc.setMoTaTinhTrang(rs.getString("moTaTinhTrang"));
            lichsc.setThoiGianTaoLich(rs.getString("thoiGianTaoLich"));
            lichsc.setThoiGianDatTruoc(rs.getString("thoiGianDatTruoc"));
            lichsc.setThoiGianDuyet(rs.getString("thoiGianDuyet"));
            lichsc.setThoiGianHoanThanh(rs.getString("thoiGianHoanThanh"));
            lichsc.setTrangThai(rs.getInt("trangThai"));
            listresult.add(lichsc);
        }
        return listresult;
    }
    
    public static LichSuaChua getLichSCById(String id) throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "select *\n" +
                    "from LichSuaChua \n" +
                    "where maLichSuaChua like '"+id+"'";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        
        rs.next();
        LichSuaChua lichsc = new LichSuaChua();
        lichsc.setMaLichSuaChua(rs.getString("maLichSuaChua"));
        lichsc.setMaKhachHang(rs.getString("maKhachHang"));
        lichsc.setMaNhanVien(rs.getString("maNhanVien"));
        lichsc.setHoTen(rs.getString("hoTen"));
        lichsc.setSoDienThoai(rs.getString("soDienThoai"));
        lichsc.setDiaChi(rs.getString("diaChi"));
        lichsc.setTenThietBi(rs.getString("tenThietBi"));
        lichsc.setHinhAnhThietBi(rs.getString("hinhAnhThietBi"));
        lichsc.setMoTaTinhTrang(rs.getString("moTaTinhTrang"));
        lichsc.setThoiGianTaoLich(rs.getString("thoiGianTaoLich"));
        lichsc.setThoiGianDatTruoc(rs.getString("thoiGianDatTruoc"));
        lichsc.setThoiGianDuyet(rs.getString("thoiGianDuyet"));
        lichsc.setThoiGianHoanThanh(rs.getString("thoiGianHoanThanh"));
        lichsc.setTrangThai(rs.getInt("trangThai"));
        System.out.println("trang thai laf " + rs.getInt("trangThai"));
        return lichsc;
    }
    
    public static void updateLichSuaChua(LichSuaChua lsc) throws SQLException, ParseException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String timebook = lsc.getThoiGianDatTruoc().replaceAll("T", " ");
        System.out.println(timebook);
        String sql = "update LichSuaChua set hoTen = N'"+lsc.getHoTen()+"',"
            + "soDienThoai = '"+lsc.getSoDienThoai()+"',thoiGianDatTruoc='"+timebook+"',"
            + "diaChi=N'"+lsc.getDiaChi()+"',tenThietBi=N'"+lsc.getTenThietBi()+"',moTaTinhTrang=N'"+lsc.getMoTaTinhTrang()+"'"
            + " where maLichSuaChua='"+lsc.getMaLichSuaChua()+"'";
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
    
     public static void deleteProduct(String idLich) throws SQLException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "Delete LichSuaChua where maLichSuaChua='"+idLich+"'";
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
     
    public static void insertProduct(LichSuaChua lsc,String idTaiKhoan) throws SQLException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String timebook = lsc.getThoiGianDatTruoc().replaceAll("T", " ");
        String sql = "Insert into LichSuaChua "
                + "values (dbo.fn_autoIdSuaChua(),'"+idTaiKhoan+"',"
                + "NULL,N'"+lsc.getHoTen()+"','"+lsc.getSoDienThoai()+"'"
                + ",N'"+lsc.getDiaChi()+"',N'"+lsc.getTenThietBi()+"',NULL,N'"+lsc.getMoTaTinhTrang()+"',"
                + "GETDATE(),'"+timebook+"',NULL,NULL,'-1')";
        System.out.println(sql);
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
//    public static List<DienThoai> queryNameProduct(Connection conn,String nameDT) throws SQLException {
//        String sql = "Select * from DienThoai where ten like N'%"+nameDT+"%'";
// 
//        PreparedStatement pstm = conn.prepareStatement(sql);
//        ResultSet rs = pstm.executeQuery();
//        List<DienThoai> list = new ArrayList<>();
//        while (rs.next()) {
//            DienThoai dthoai = new DienThoai();
//            dthoai.setIdDienThoai(rs.getString("idDienThoai"));
//            dthoai.setTen(rs.getString("ten"));
//            dthoai.setLoai(rs.getString("loaiDT"));
//            dthoai.setGia(rs.getString("gia"));
//            dthoai.setChip(rs.getString("chip"));
//            dthoai.setPin(rs.getString("pin"));
//            dthoai.setManHinh(rs.getString("manHinh"));
//            dthoai.setBoNhoTrong(rs.getString("boNhoTrong"));
//            list.add(dthoai);
//        }
//        return list;
//    }
    
//    public static void insertProduct(Connection conn, DienThoai dt) throws SQLException {
//        String sql = "Insert into DienThoai values (dbo.FN_getnextid(),N'"+dt.getLoai()+"',"
//                + "N'"+dt.getTen()+"',N'"+dt.getGia()+"',N'"+dt.getChip()+"',N'"+dt.getPin()+"',N'"+dt.getManHinh()+"',N'"+dt.getBoNhoTrong()+"')";
//        Statement stmt = conn.createStatement();
//        System.out.println(sql);
//        stmt.execute(sql);
//    }
//    
//    public static void deleteProduct(Connection conn, String iddienthoai) throws SQLException {
//        String sql = "Delete DienThoai where idDienThoai='"+iddienthoai+"'";
//        Statement stmt = conn.createStatement();
//        stmt.execute(sql);
//    }
//    
//    public static void updateProduct(Connection conn,String iddienthoai, DienThoai dt) throws SQLException {
//        String sql = "update DienThoai set loaiDT = N'"+dt.getLoai()+"',"
//                + "ten = N'"+dt.getTen()+"',gia=N'"+dt.getGia()+"',chip=N'"+dt.getChip()+"',pin=N'"+dt.getPin()+"',manHinh=N'"+dt.getManHinh()+"',boNhoTrong=N'"+dt.getBoNhoTrong()+"'"
//                + " where idDienThoai='"+iddienthoai+"'";
//        Statement stmt = conn.createStatement();
//        System.out.println(sql);
//        stmt.execute(sql);
}
