package com.drjt.jiemai.pojo;

public class Account {
    private Integer accId;

    private Integer banId;

    private String accNumber;

    public Integer getAccId() {
        return accId;
    }

    public void setAccId(Integer accId) {
        this.accId = accId;
    }

    public Integer getBanId() {
        return banId;
    }

    public void setBanId(Integer banId) {
        this.banId = banId;
    }

    public String getAccNumber() {
        return accNumber;
    }

    public void setAccNumber(String accNumber) {
        this.accNumber = accNumber == null ? null : accNumber.trim();
    }
}