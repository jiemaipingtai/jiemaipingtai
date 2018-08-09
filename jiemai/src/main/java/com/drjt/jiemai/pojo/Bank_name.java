package com.drjt.jiemai.pojo;

public class Bank_name {
    private Integer banaId;

    private String banaName;

    public Integer getBanaId() {
        return banaId;
    }

    public void setBanaId(Integer banaId) {
        this.banaId = banaId;
    }

    public String getBanaName() {
        return banaName;
    }

    public void setBanaName(String banaName) {
        this.banaName = banaName == null ? null : banaName.trim();
    }
}