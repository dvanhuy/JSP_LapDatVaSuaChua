/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author ADMIN
 */
public class LichLapDat {
    private String maLichLapDat;
    private String maKhachHang;
    private String maNhanVien;
    private String hoTen;
    private String soDienThoai;
    private String idTTLapDat;
    private String thoiGianTaoLich;
    private String thoiGianDatTruoc;
    private String thoiGianDuyet;
    private String thoiGianHoanThanh;
    private int trangThai;

    public LichLapDat() {
    }

    public LichLapDat(String maLichLapDat, String maKhachHang, String maNhanVien, String hoTen, String soDienThoai, String idTTLapDat, String thoiGianTaoLich, String thoiGianDatTruoc, String thoiGianDuyet, String thoiGianHoanThanh, int trangThai) {
        this.maLichLapDat = maLichLapDat;
        this.maKhachHang = maKhachHang;
        this.maNhanVien = maNhanVien;
        this.hoTen = hoTen;
        this.soDienThoai = soDienThoai;
        this.idTTLapDat = idTTLapDat;
        this.thoiGianTaoLich = thoiGianTaoLich;
        this.thoiGianDatTruoc = thoiGianDatTruoc;
        this.thoiGianDuyet = thoiGianDuyet;
        this.thoiGianHoanThanh = thoiGianHoanThanh;
        this.trangThai = trangThai;
    }

    public String getMaLichLapDat() {
        return maLichLapDat;
    }

    public void setMaLichLapDat(String maLichLapDat) {
        this.maLichLapDat = maLichLapDat;
    }

    public String getMaKhachHang() {
        return maKhachHang;
    }

    public void setMaKhachHang(String maKhachHang) {
        this.maKhachHang = maKhachHang;
    }

    public String getMaNhanVien() {
        return maNhanVien;
    }

    public void setMaNhanVien(String maNhanVien) {
        this.maNhanVien = maNhanVien;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getIdTTLapDat() {
        return idTTLapDat;
    }

    public void setIdTTLapDat(String idTTLapDat) {
        this.idTTLapDat = idTTLapDat;
    }

    public String getThoiGianTaoLich() {
        return thoiGianTaoLich;
    }

    public void setThoiGianTaoLich(String thoiGianTaoLich) {
        this.thoiGianTaoLich = thoiGianTaoLich;
    }

    public String getThoiGianDatTruoc() {
        return thoiGianDatTruoc;
    }

    public void setThoiGianDatTruoc(String thoiGianDatTruoc) {
        this.thoiGianDatTruoc = thoiGianDatTruoc;
    }

    public String getThoiGianDuyet() {
        return thoiGianDuyet;
    }

    public void setThoiGianDuyet(String thoiGianDuyet) {
        this.thoiGianDuyet = thoiGianDuyet;
    }

    public String getThoiGianHoanThanh() {
        return thoiGianHoanThanh;
    }

    public void setThoiGianHoanThanh(String thoiGianHoanThanh) {
        this.thoiGianHoanThanh = thoiGianHoanThanh;
    }

    public int getTrangThai() {
        return trangThai;
    }

    public void setTrangThai(int trangThai) {
        this.trangThai = trangThai;
    }

    
    
}
