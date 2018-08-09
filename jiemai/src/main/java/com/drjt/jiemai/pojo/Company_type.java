package com.drjt.jiemai.pojo;

public class Company_type {
    private Integer comtypeId;

    private String comtypeName;

    public Integer getComtypeId() {
        return comtypeId;
    }

    public void setComtypeId(Integer comtypeId) {
        this.comtypeId = comtypeId;
    }

    public String getComtypeName() {
        return comtypeName;
    }

    public void setComtypeName(String comtypeName) {
        this.comtypeName = comtypeName == null ? null : comtypeName.trim();
    }
}