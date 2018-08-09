package com.drjt.jiemai.pojo;

import java.util.Date;

public class Company {
    private Integer companyId;

    private Integer addressId;

    private Integer busId;

    private Integer comtypeId;

    private Integer couId;

    private Integer proId;

    private Integer citId;

    private String companyName;

    private String companyBrand;

    private String companyLicense;

    private Date companyRegtiime;

    private Date companyModtime;

    private Integer companyOperation;

    public Integer getCompanyId() {
        return companyId;
    }

    public void setCompanyId(Integer companyId) {
        this.companyId = companyId;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getBusId() {
        return busId;
    }

    public void setBusId(Integer busId) {
        this.busId = busId;
    }

    public Integer getComtypeId() {
        return comtypeId;
    }

    public void setComtypeId(Integer comtypeId) {
        this.comtypeId = comtypeId;
    }

    public Integer getCouId() {
        return couId;
    }

    public void setCouId(Integer couId) {
        this.couId = couId;
    }

    public Integer getProId() {
        return proId;
    }

    public void setProId(Integer proId) {
        this.proId = proId;
    }

    public Integer getCitId() {
        return citId;
    }

    public void setCitId(Integer citId) {
        this.citId = citId;
    }

    public String getCompanyName() {
        return companyName;
    }

    public void setCompanyName(String companyName) {
        this.companyName = companyName == null ? null : companyName.trim();
    }

    public String getCompanyBrand() {
        return companyBrand;
    }

    public void setCompanyBrand(String companyBrand) {
        this.companyBrand = companyBrand == null ? null : companyBrand.trim();
    }

    public String getCompanyLicense() {
        return companyLicense;
    }

    public void setCompanyLicense(String companyLicense) {
        this.companyLicense = companyLicense == null ? null : companyLicense.trim();
    }

    public Date getCompanyRegtiime() {
        return companyRegtiime;
    }

    public void setCompanyRegtiime(Date companyRegtiime) {
        this.companyRegtiime = companyRegtiime;
    }

    public Date getCompanyModtime() {
        return companyModtime;
    }

    public void setCompanyModtime(Date companyModtime) {
        this.companyModtime = companyModtime;
    }

    public Integer getCompanyOperation() {
        return companyOperation;
    }

    public void setCompanyOperation(Integer companyOperation) {
        this.companyOperation = companyOperation;
    }
}