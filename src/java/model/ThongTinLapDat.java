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
public class ThongTinLapDat {
    private String idTTLapDat;
    private String idThietBi;
    private float giaLapDat;
    private String moTaCongViec;
    private ThietBi thietBi;

    public ThongTinLapDat() {
    }

    public ThongTinLapDat(String idTTLapDat, String idThietBi, float giaLapDat, String moTaCongViec, ThietBi thietBi) {
        this.idTTLapDat = idTTLapDat;
        this.idThietBi = idThietBi;
        this.giaLapDat = giaLapDat;
        this.moTaCongViec = moTaCongViec;
        this.thietBi = thietBi;
    }

    public String getIdTTLapDat() {
        return idTTLapDat;
    }

    public void setIdTTLapDat(String idTTLapDat) {
        this.idTTLapDat = idTTLapDat;
    }

    public String getIdThietBi() {
        return idThietBi;
    }

    public void setIdThietBi(String idThietBi) {
        this.idThietBi = idThietBi;
    }

    public float getGiaLapDat() {
        return giaLapDat;
    }

    public void setGiaLapDat(float giaLapDat) {
        this.giaLapDat = giaLapDat;
    }

    public String getMoTaCongViec() {
        return moTaCongViec;
    }

    public void setMoTaCongViec(String moTaCongViec) {
        this.moTaCongViec = moTaCongViec;
    }

    public ThietBi getThietBi() {
        return thietBi;
    }

    public void setThietBi(ThietBi thietBi) {
        this.thietBi = thietBi;
    }

    
    
}
