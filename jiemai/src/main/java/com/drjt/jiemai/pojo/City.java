package com.drjt.jiemai.pojo;

public class City {
    private Integer citId;

    private String citName;

    private String ityNumber;

    public Integer getCitId() {
        return citId;
    }

    public void setCitId(Integer citId) {
        this.citId = citId;
    }

    public String getCitName() {
        return citName;
    }

    public void setCitName(String citName) {
        this.citName = citName == null ? null : citName.trim();
    }

    public String getItyNumber() {
        return ityNumber;
    }

    public void setItyNumber(String ityNumber) {
        this.ityNumber = ityNumber == null ? null : ityNumber.trim();
    }
}