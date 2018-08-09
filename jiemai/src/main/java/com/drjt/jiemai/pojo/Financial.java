package com.drjt.jiemai.pojo;

import java.util.Date;

public class Financial {
    private Integer finId;

    private Integer braId;

    private Integer borId;

    private String finName;

    private Double finPramount;

    private Integer finNumber;

    private Date tradingTime;

    private Date finRegdate;

    private Date finModdate;

    private Integer finOperation;

    public Integer getFinId() {
        return finId;
    }

    public void setFinId(Integer finId) {
        this.finId = finId;
    }

    public Integer getBraId() {
        return braId;
    }

    public void setBraId(Integer braId) {
        this.braId = braId;
    }

    public Integer getBorId() {
        return borId;
    }

    public void setBorId(Integer borId) {
        this.borId = borId;
    }

    public String getFinName() {
        return finName;
    }

    public void setFinName(String finName) {
        this.finName = finName == null ? null : finName.trim();
    }

    public Double getFinPramount() {
        return finPramount;
    }

    public void setFinPramount(Double finPramount) {
        this.finPramount = finPramount;
    }

    public Integer getFinNumber() {
        return finNumber;
    }

    public void setFinNumber(Integer finNumber) {
        this.finNumber = finNumber;
    }

    public Date getTradingTime() {
        return tradingTime;
    }

    public void setTradingTime(Date tradingTime) {
        this.tradingTime = tradingTime;
    }

    public Date getFinRegdate() {
        return finRegdate;
    }

    public void setFinRegdate(Date finRegdate) {
        this.finRegdate = finRegdate;
    }

    public Date getFinModdate() {
        return finModdate;
    }

    public void setFinModdate(Date finModdate) {
        this.finModdate = finModdate;
    }

    public Integer getFinOperation() {
        return finOperation;
    }

    public void setFinOperation(Integer finOperation) {
        this.finOperation = finOperation;
    }
}