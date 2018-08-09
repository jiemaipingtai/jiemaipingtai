package com.drjt.jiemai.pojo;

public class Bank {
    private Integer banId;

    private Integer banaId;

    private Integer addressId;

    private Integer couId;

    private Integer proId;

    private Integer citId;

    private String banOpenname;

    public Integer getBanId() {
        return banId;
    }

    public void setBanId(Integer banId) {
        this.banId = banId;
    }

    public Integer getBanaId() {
        return banaId;
    }

    public void setBanaId(Integer banaId) {
        this.banaId = banaId;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getCouId() {
        return couId;
    }

    public void setCouId(Integer couId) {
        this.couId = couId;
    }

    public Integer getProId() {
        return proId;
    }

    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public Integer getCitId() {
        return citId;
    }

    public void setCitId(Integer citId) {
        this.citId = citId;
    }

    public String getBanOpenname() {
        return banOpenname;
    }

    public void setBanOpenname(String banOpenname) {
        this.banOpenname = banOpenname == null ? null : banOpenname.trim();
    }
}