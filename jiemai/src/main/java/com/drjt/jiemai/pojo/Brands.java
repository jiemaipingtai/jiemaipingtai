package com.drjt.jiemai.pojo;

import java.util.Date;

public class Brands {
    private Integer braId;

    private String braName;

    private String braPwd;

    private String braNikename;

    private Integer braSerx;

    private String braPhone;

    private String braEmail;

    private Integer posId;

    private Integer companyId;

    private Integer moneyId;

    private Integer userstaId;

    private Date braRegdate;

    private Date braModdate;

    private Integer braOperation;

    private byte[] braRealname;

    public Integer getBraId() {
        return braId;
    }

    public void setBraId(Integer braId) {
        this.braId = braId;
    }

    public String getBraName() {
        return braName;
    }

    public void setBraName(String braName) {
        this.braName = braName == null ? null : braName.trim();
    }

    public String getBraPwd() {
        return braPwd;
    }

    public void setBraPwd(String braPwd) {
        this.braPwd = braPwd == null ? null : braPwd.trim();
    }

    public String getBraNikename() {
        return braNikename;
    }

    public void setBraNikename(String braNikename) {
        this.braNikename = braNikename == null ? null : braNikename.trim();
    }

    public Integer getBraSerx() {
        return braSerx;
    }

    public void setBraSerx(Integer braSerx) {
        this.braSerx = braSerx;
    }

    public String getBraPhone() {
        return braPhone;
    }

    public void setBraPhone(String braPhone) {
        this.braPhone = braPhone == null ? null : braPhone.trim();
    }

    public String getBraEmail() {
        return braEmail;
    }

    public void setBraEmail(String braEmail) {
        this.braEmail = braEmail == null ? null : braEmail.trim();
    }

    public Integer getPosId() {
        return posId;
    }

    public void setPosId(Integer posId) {
        this.posId = posId;
    }

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getMoneyId() {
        return moneyId;
    }

    public void setMoneyId(Integer moneyId) {
        this.moneyId = moneyId;
    }

    public Integer getUserstaId() {
        return userstaId;
    }

    public void setUserstaId(Integer userstaId) {
        this.userstaId = userstaId;
    }

    public Date getBraRegdate() {
        return braRegdate;
    }

    public void setBraRegdate(Date braRegdate) {
        this.braRegdate = braRegdate;
    }

    public Date getBraModdate() {
        return braModdate;
    }

    public void setBraModdate(Date braModdate) {
        this.braModdate = braModdate;
    }

    public Integer getBraOperation() {
        return braOperation;
    }

    public void setBraOperation(Integer braOperation) {
        this.braOperation = braOperation;
    }

    public byte[] getBraRealname() {
        return braRealname;
    }

    public void setBraRealname(byte[] braRealname) {
        this.braRealname = braRealname;
    }
}