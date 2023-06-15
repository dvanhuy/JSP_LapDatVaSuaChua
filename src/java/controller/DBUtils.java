
package controller;

import connect.SQLServerConnUtils_JTDS;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.util.ArrayList;
import java.util.List;
import model.LichSuaChua;
import model.ThietBi;
import model.ThongTinLapDat;

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
    
     public static void deleteLichSuaChua(String idLich) throws SQLException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "Delete LichSuaChua where maLichSuaChua='"+idLich+"'";
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
     
    public static void insertLichSuaChua(LichSuaChua lsc,String idTaiKhoan) throws SQLException {
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
    
    public static List<ThongTinLapDat> get24ServiceByPage(int page,String order,String search) throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        int dongdautien = (page-1)*24;
        String sql = "SELECT * FROM ThongTinLapDat as T " +
                    "	left join ThietBi " +
                    "		on T.idThietBi=ThietBi.idThietBi " +
                    "where tinhTrang=1 and tenthietbi like N'%"+search+"%' " +
                    "ORDER BY idTTLapDat "+order+" OFFSET "+dongdautien+" ROWS FETCH NEXT 24 ROWS ONLY";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<ThongTinLapDat> listresult = new ArrayList<>();
        while (rs.next()) {
            ThongTinLapDat ttld = new ThongTinLapDat();
            ttld.setIdTTLapDat(rs.getString("idTTLapDat"));
            ttld.setIdThietBi(rs.getString("idThietBi"));
            ttld.setGiaLapDat(rs.getFloat("giaLapDat"));
            ttld.setMoTaCongViec(rs.getString("moTaCongViec"));
            ThietBi thietbi = new ThietBi();
            thietbi.setTenThietBi(rs.getString("tenThietBi"));
            thietbi.setHinhAnh(rs.getString("hinhAnh"));
            thietbi.setGiaThietBi(rs.getFloat("giaThietBi"));
            ttld.setThietBi(thietbi);
            listresult.add(ttld);
        }
        return listresult;
    }
    
    public static int getLengthService(String order,String search) throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "SELECT count(idTTLapDat) FROM ThongTinLapDat as T " +
                    "	left join ThietBi " +
                    "		on T.idThietBi=ThietBi.idThietBi " +
                    "where tinhTrang=1 and tenthietbi like N'%"+search+"%' ";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        rs.next();
        return rs.getInt(1);
    }
    
    public static int getLengthService() throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "select count(idTTLapDat) " +
                        " from ThongTinLapDat";
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        rs.next();
        return rs.getInt(1);
    }
    
    public static ThongTinLapDat getTTLDById(String id) throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "SELECT * FROM ThongTinLapDat as T " +
                    "	left join ThietBi " +
                    "		on T.idThietBi=ThietBi.idThietBi " +
                    "where idTTLapDat=? ";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        pstm.setString(1, id);
        ResultSet rs = pstm.executeQuery();
        
        rs.next();
        ThongTinLapDat ttld = new ThongTinLapDat();
        ttld.setIdTTLapDat(rs.getString("idTTLapDat"));
        ttld.setIdThietBi(rs.getString("idThietBi"));
        ttld.setGiaLapDat(rs.getFloat("giaLapDat"));
        ttld.setMoTaCongViec(rs.getString("moTaCongViec"));
        ThietBi thietbi = new ThietBi();
        thietbi.setTenThietBi(rs.getString("tenThietBi"));
        thietbi.setHinhAnh(rs.getString("hinhAnh"));
        thietbi.setGiaThietBi(rs.getFloat("giaThietBi"));
        ttld.setThietBi(thietbi);
        return ttld;
    }
    
    public static void updateTTLD(ThongTinLapDat ttld) throws SQLException, ParseException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
//        String timebook = ttld.getThoiGianDatTruoc().replaceAll("T", " ");
        String sql = "update ThongTinLapDat "
                + "set giaLapDat = "+ttld.getGiaLapDat()+",moTaCongViec = N'"+ttld.getMoTaCongViec()+"' "
            + " where idTTLapDat='"+ttld.getIdTTLapDat()+"'";
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
    
     public static void deleteTTLD(String idttld) throws SQLException {
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "Delete ThongTinLapDat where idTTLapDat='"+idttld+"'";
        Statement stmt = conn.createStatement();
        stmt.execute(sql);
    }
    
    public static void insertTTLD(ThongTinLapDat newTTLD) throws SQLException {
       Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
       String sql = "Insert into ThongTinLapDat "
               + "values (dbo.fn_autoIdTTLD(),'"+newTTLD.getIdThietBi()+"'"
               + ","+newTTLD.getGiaLapDat()+",N'"+newTTLD.getMoTaCongViec()+"')";
       Statement stmt = conn.createStatement();
        System.out.println(sql);
       stmt.execute(sql);
   }
    
    public static List<ThietBi> getAllThietBi() throws SQLException{
        Connection conn = SQLServerConnUtils_JTDS.getSQLServerConnection_JTDS();
        String sql = "select * " +
                    "from ThietBi ";
        
        PreparedStatement pstm = conn.prepareStatement(sql);
        ResultSet rs = pstm.executeQuery();
        List<ThietBi> listresult = new ArrayList<>();
        while (rs.next()) {
            ThietBi thietbi = new ThietBi();
            thietbi.setIdThietBi(rs.getString("idThietBi"));
            thietbi.setTenThietBi(rs.getString("tenThietBi"));
            thietbi.setSoLuong(rs.getInt("soLuong"));
            thietbi.setTinhTrang(rs.getInt("tinhTrang"));
            thietbi.setHinhAnh(rs.getString("hinhAnh"));
            thietbi.setGiaThietBi(rs.getFloat("giaThietBi"));
            listresult.add(thietbi);
        }
        return listresult;
    }
}
