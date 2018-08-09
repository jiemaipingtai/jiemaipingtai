package com.drjt.jiemai.pojo;

import java.util.Date;

public class Borsel {
    private Integer borId;

    private String borName;

    private String borPwd;

    private String borNikename;

    private String borRealname;

    private Integer borSex;

    private String borPhone;

    private String borEmail;

    private Integer companyId;

    private Integer moneyId;

    private Integer userstaId;

    private Date borRegdate;

    private Date borModdate;

    private Integer braOperation;

    public Integer getBorId() {
        return borId;
    }

    public void setBorId(Integer borId) {
        this.borId = borId;
    }

    public String getBorName() {
        return borName;
    }

    public void setBorName(String borName) {
        this.borName = borName == null ? null : borName.trim();
    }

    public String getBorPwd() {
        return borPwd;
    }

    public void setBorPwd(String borPwd) {
        this.borPwd = borPwd == null ? null : borPwd.trim();
    }

    public String getBorNikename() {
        return borNikename;
    }

    public void setBorNikename(String borNikename) {
        this.borNikename = borNikename == null ? null : borNikename.trim();
    }

    public String getBorRealname() {
        return borRealname;
    }

    public void setBorRealname(String borRealname) {
        this.borRealname = borRealname == null ? null : borRealname.trim();
    }

    public Integer getBorSex() {
        return borSex;
    }

    public void setBorSex(Integer borSex) {
        this.borSex = borSex;
    }

    public String getBorPhone() {
        return borPhone;
    }

    public void setBorPhone(String borPhone) {
        this.borPhone = borPhone == null ? null : borPhone.trim();
    }

    public String getBorEmail() {
        return borEmail;
    }

    public void setBorEmail(String borEmail) {
        this.borEmail = borEmail == null ? null : borEmail.trim();
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

    public Date getBorRegdate() {
        return borRegdate;
    }

    public void setBorRegdate(Date borRegdate) {
        this.borRegdate = borRegdate;
    }

    public Date getBorModdate() {
        return borModdate;
    }

    public void setBorModdate(Date borModdate) {
        this.borModdate = borModdate;
    }

    public Integer getBraOperation() {
        return braOperation;
    }

    public void setBraOperation(Integer braOperation) {
        this.braOperation = braOperation;
    }
}