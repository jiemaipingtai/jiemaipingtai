package com.drjt.jiemai.pojo;

import java.util.Date;

public class Admin {
    private Integer admId;

    private String admName;

    private String admPwd;

    private String admNikename;

    private String admRealname;

    private Integer admSex;

    private String amdPhone;

    private String admEmail;

    private Date amdRegtiime;

    private Date admModtime;

    private Integer braOperation;

    public Integer getAdmId() {
        return admId;
    }

    public void setAdmId(Integer admId) {
        this.admId = admId;
    }

    public String getAdmName() {
        return admName;
    }

    public void setAdmName(String admName) {
        this.admName = admName == null ? null : admName.trim();
    }

    public String getAdmPwd() {
        return admPwd;
    }

    public void setAdmPwd(String admPwd) {
        this.admPwd = admPwd == null ? null : admPwd.trim();
    }

    public String getAdmNikename() {
        return admNikename;
    }

    public void setAdmNikename(String admNikename) {
        this.admNikename = admNikename == null ? null : admNikename.trim();
    }

    public String getAdmRealname() {
        return admRealname;
    }

    public void setAdmRealname(String admRealname) {
        this.admRealname = admRealname == null ? null : admRealname.trim();
    }

    public Integer getAdmSex() {
        return admSex;
    }

    public void setAdmSex(Integer admSex) {
        this.admSex = admSex;
    }

    public String getAmdPhone() {
        return amdPhone;
    }

    public void setAmdPhone(String amdPhone) {
        this.amdPhone = amdPhone == null ? null : amdPhone.trim();
    }

    public String getAdmEmail() {
        return admEmail;
    }

    public void setAdmEmail(String admEmail) {
        this.admEmail = admEmail == null ? null : admEmail.trim();
    }

    public Date getAmdRegtiime() {
        return amdRegtiime;
    }

    public void setAmdRegtiime(Date amdRegtiime) {
        this.amdRegtiime = amdRegtiime;
    }

    public Date getAdmModtime() {
        return admModtime;
    }

    public void setAdmModtime(Date admModtime) {
        this.admModtime = admModtime;
    }

    public Integer getBraOperation() {
        return braOperation;
    }

    public void setBraOperation(Integer braOperation) {
        this.braOperation = braOperation;
    }
}