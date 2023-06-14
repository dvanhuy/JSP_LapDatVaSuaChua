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
public class ThietBi {
    private String idThietBi;
    private String tenThietBi;
    private int soLuong;
    private String tinhTrang;
    private String hinhAnh;
    private float giaThietBi;

    public ThietBi() {
    }

    public ThietBi(String idThietBi, String tenThietBi, int soLuong, String tinhTrang, String hinhAnh, float giaThietBi) {
        this.idThietBi = idThietBi;
        this.tenThietBi = tenThietBi;
        this.soLuong = soLuong;
        this.tinhTrang = tinhTrang;
        this.hinhAnh = hinhAnh;
        this.giaThietBi = giaThietBi;
    }

    public String getIdThietBi() {
        return idThietBi;
    }

    public void setIdThietBi(String idThietBi) {
        this.idThietBi = idThietBi;
    }

    public String getTenThietBi() {
        return tenThietBi;
    }

    public void setTenThietBi(String tenThietBi) {
        this.tenThietBi = tenThietBi;
    }

    public int getSoLuong() {
        return soLuong;
    }

    public void setSoLuong(int soLuong) {
        this.soLuong = soLuong;
    }

    public String getTinhTrang() {
        return tinhTrang;
    }

    public void setTinhTrang(String tinhTrang) {
        this.tinhTrang = tinhTrang;
    }

    public String getHinhAnh() {
        return hinhAnh;
    }

    public void setHinhAnh(String hinhAnh) {
        this.hinhAnh = hinhAnh;
    }

    public float getGiaThietBi() {
        return giaThietBi;
    }

    public void setGiaThietBi(float giaThietBi) {
        this.giaThietBi = giaThietBi;
    }
    
    
}
