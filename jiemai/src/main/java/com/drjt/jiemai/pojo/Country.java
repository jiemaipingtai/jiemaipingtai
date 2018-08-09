package com.drjt.jiemai.pojo;

public class Country {
    private Integer couId;

    private String couEnglish;

    private String couName;

    private String consignee;

    private String nationalCode;

    public Integer getCouId() {
        return couId;
    }

    public void setCouId(Integer couId) {
        this.couId = couId;
    }

    public String getCouEnglish() {
        return couEnglish;
    }

    public void setCouEnglish(String couEnglish) {
        this.couEnglish = couEnglish == null ? null : couEnglish.trim();
    }

    public String getCouName() {
        return couName;
    }

    public void setCouName(String couName) {
        this.couName = couName == null ? null : couName.trim();
    }

    public String getConsignee() {
        return consignee;
    }

    public void setConsignee(String consignee) {
        this.consignee = consignee == null ? null : consignee.trim();
    }

    public String getNationalCode() {
        return nationalCode;
    }

    public void setNationalCode(String nationalCode) {
        this.nationalCode = nationalCode == null ? null : nationalCode.trim();
    }
}