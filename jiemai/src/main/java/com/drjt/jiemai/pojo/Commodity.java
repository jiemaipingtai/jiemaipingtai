package com.drjt.jiemai.pojo;

import java.util.Date;

public class Commodity {
    private Integer comId;

    private Integer braId;

    private Integer audId;

    private Integer comtypeId;

    private String comName;

    private Date shelftime;

    private Double price;

    private Integer stock;

    private Date comRegdate;

    private Date comModdate;

    private Integer comOperation;

    public Integer getComId() {
        return comId;
    }

    public void setComId(Integer comId) {
        this.comId = comId;
    }

    public Integer getBraId() {
        return braId;
    }

    public void setBraId(Integer braId) {
        this.braId = braId;
    }

    public Integer getAudId() {
        return audId;
    }

    public void setAudId(Integer audId) {
        this.audId = audId;
    }

    public Integer getComtypeId() {
        return comtypeId;
    }

    public void setComtypeId(Integer comtypeId) {
        this.comtypeId = comtypeId;
    }

    public String getComName() {
        return comName;
    }

    public void setComName(String comName) {
        this.comName = comName == null ? null : comName.trim();
    }

    public Date getShelftime() {
        return shelftime;
    }

    public void setShelftime(Date shelftime) {
        this.shelftime = shelftime;
    }

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Integer getStock() {
        return stock;
    }

    public void setStock(Integer stock) {
        this.stock = stock;
    }

    public Date getComRegdate() {
        return comRegdate;
    }

    public void setComRegdate(Date comRegdate) {
        this.comRegdate = comRegdate;
    }

    public Date getComModdate() {
        return comModdate;
    }

    public void setComModdate(Date comModdate) {
        this.comModdate = comModdate;
    }

    public Integer getComOperation() {
        return comOperation;
    }

    public void setComOperation(Integer comOperation) {
        this.comOperation = comOperation;
    }
}