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
public class TaiKhoan {

    private String maDinhDanh;
    private String hinhAnh;
    private String hoTen;
    private String tenTaiKhoan;
    private String matKhau;
    private String soDienThoai;
    private String gmail;
    private String ngaySinh;
    private String diaChi;
    private String loaiTaiKhoan;

    public TaiKhoan() {
    }

    public TaiKhoan(String maDinhDanh, String hinhAnh, String hoTen, String tenTaiKhoan, String matKhau, String soDienThoai, String gmail, String ngaySinh, String diaChi, String loaiTaiKhoan) {
        this.maDinhDanh = maDinhDanh;
        this.hinhAnh = hinhAnh;
        this.hoTen = hoTen;
        this.tenTaiKhoan = tenTaiKhoan;
        this.matKhau = matKhau;
        this.soDienThoai = soDienThoai;
        this.gmail = gmail;
        this.ngaySinh = ngaySinh;
        this.diaChi = diaChi;
        this.loaiTaiKhoan = loaiTaiKhoan;
    }

    public String getMaDinhDanh() {
        return maDinhDanh;
    }

    public void setMaDinhDanh(String maDinhDanh) {
        this.maDinhDanh = maDinhDanh;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public String getHoTen() {
        return hoTen;
    }

    public void setHoTen(String hoTen) {
        this.hoTen = hoTen;
    }

    public String getTenTaiKhoan() {
        return tenTaiKhoan;
    }

    public void setTenTaiKhoan(String tenTaiKhoan) {
        this.tenTaiKhoan = tenTaiKhoan;
    }

    public String getMatKhau() {
        return matKhau;
    }

    public void setMatKhau(String matKhau) {
        this.matKhau = matKhau;
    }

    public String getSoDienThoai() {
        return soDienThoai;
    }

    public void setSoDienThoai(String soDienThoai) {
        this.soDienThoai = soDienThoai;
    }

    public String getGmail() {
        return gmail;
    }

    public void setGmail(String gmail) {
        this.gmail = gmail;
    }

    public String getNgaySinh() {
        return ngaySinh;
    }

    public void setNgaySinh(String ngaySinh) {
        this.ngaySinh = ngaySinh;
    }

    public String getDiaChi() {
        return diaChi;
    }

    public void setDiaChi(String diaChi) {
        this.diaChi = diaChi;
    }

    public String getLoaiTaiKhoan() {
        return loaiTaiKhoan;
    }

    public void setLoaiTaiKhoan(String loaiTaiKhoan) {
        this.loaiTaiKhoan = loaiTaiKhoan;
    }

    
    
}
