package com.example.jubitorremake.rest;

import com.google.gson.annotations.Expose;
import com.google.gson.annotations.SerializedName;

public class LoginResponse {

    @SerializedName("idpelanggan")
    @Expose
    private Integer idpelanggan;
    @SerializedName("namapelanggan")
    @Expose
    private String namapelanggan;
    @SerializedName("alamat")
    @Expose
    private String alamat;
    @SerializedName("notelp")
    @Expose
    private String notelp;
    @SerializedName("imgpelanggan")
    @Expose
    private String imgpelanggan;

    public Integer getIdpelanggan() {
        return idpelanggan;
    }

    public void setIdpelanggan(Integer idpelanggan) {
        this.idpelanggan = idpelanggan;
    }

    public String getNamapelanggan() {
        return namapelanggan;
    }

    public void setNamapelanggan(String namapelanggan) {
        this.namapelanggan = namapelanggan;
    }

    public String getAlamat() {
        return alamat;
    }

    public void setAlamat(String alamat) {
        this.alamat = alamat;
    }

    public String getNotelp() {
        return notelp;
    }

    public void setNotelp(String notelp) {
        this.notelp = notelp;
    }

    public String getImgpelanggan() {
        return imgpelanggan;
    }

    public void setImgpelanggan(String imgpelanggan) {
        this.imgpelanggan = imgpelanggan;
    }
}
