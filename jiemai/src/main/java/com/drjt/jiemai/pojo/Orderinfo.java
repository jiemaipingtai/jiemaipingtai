package com.drjt.jiemai.pojo;

import java.util.Date;

public class Orderinfo {
    private Integer ordId;

    private Integer addressId;

    private Integer ordstaId;

    private Double ordPramount;

    private Integer ordNumber;

    private Date ordRegdate;

    private Date ordModdate;

    private Integer ordOperation;

    public Integer getOrdId() {
        return ordId;
    }

    public void setOrdId(Integer ordId) {
        this.ordId = ordId;
    }

    public Integer getAddressId() {
        return addressId;
    }

    public void setAddressId(Integer addressId) {
        this.addressId = addressId;
    }

    public Integer getOrdstaId() {
        return ordstaId;
    }

    public void setOrdstaId(Integer ordstaId) {
        this.ordstaId = ordstaId;
    }

    public Double getOrdPramount() {
        return ordPramount;
    }

    public void setOrdPramount(Double ordPramount) {
        this.ordPramount = ordPramount;
    }

    public Integer getOrdNumber() {
        return ordNumber;
    }

    public void setOrdNumber(Integer ordNumber) {
        this.ordNumber = ordNumber;
    }

    public Date getOrdRegdate() {
        return ordRegdate;
    }

    public void setOrdRegdate(Date ordRegdate) {
        this.ordRegdate = ordRegdate;
    }

    public Date getOrdModdate() {
        return ordModdate;
    }

    public void setOrdModdate(Date ordModdate) {
        this.ordModdate = ordModdate;
    }

    public Integer getOrdOperation() {
        return ordOperation;
    }

    public void setOrdOperation(Integer ordOperation) {
        this.ordOperation = ordOperation;
    }
}