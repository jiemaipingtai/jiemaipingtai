package com.drjt.jiemai.pojo;

import java.util.Date;

public class Complaints {
    private Integer complaintsId;

    private Integer comId;

    private String complaintsName;

    private Integer userId;

    private Date complaintsTime;

    public Integer getComplaintsId() {
        return complaintsId;
    }

    public void setComplaintsId(Integer complaintsId) {
        this.complaintsId = complaintsId;
    }

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public String getComplaintsName() {
        return complaintsName;
    }

    public void setComplaintsName(String complaintsName) {
        this.complaintsName = complaintsName == null ? null : complaintsName.trim();
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Date getComplaintsTime() {
        return complaintsTime;
    }

    public void setComplaintsTime(Date complaintsTime) {
        this.complaintsTime = complaintsTime;
    }
}