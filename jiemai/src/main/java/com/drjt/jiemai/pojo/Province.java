package com.drjt.jiemai.pojo;

public class Province {
    private Integer proId;

    private String proName;

    private String nationalCode;

    private String cityNumber;

    public Integer getProId() {
        return proId;
    }

    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public String getProName() {
        return proName;
    }

    public void setProName(String proName) {
        this.proName = proName == null ? null : proName.trim();
    }

    public String getNationalCode() {
        return nationalCode;
    }

    public void setNationalCode(String nationalCode) {
        this.nationalCode = nationalCode == null ? null : nationalCode.trim();
    }

    public String getCityNumber() {
        return cityNumber;
    }

    public void setCityNumber(String cityNumber) {
        this.cityNumber = cityNumber == null ? null : cityNumber.trim();
    }
}