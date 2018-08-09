package com.drjt.jiemai.pojo;

import java.util.Date;

public class Audit {
    private Integer audId;

    private Integer audType;

    private Date audTime;

    public Integer getAudId() {
        return audId;
    }

    public void setAudId(Integer audId) {
        this.audId = audId;
    }

    public Integer getAudType() {
        return audType;
    }

    public void setAudType(Integer audType) {
        this.audType = audType;
    }

    public Date getAudTime() {
        return audTime;
    }

    public void setAudTime(Date audTime) {
        this.audTime = audTime;
    }
}