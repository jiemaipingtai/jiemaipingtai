package com.drjt.jiemai.pojo;

public class Money {
    private Integer moneyId;

    private Integer banId;

    private Integer accId;

    private Integer moneyPwd;

    private Double balance;

    public Integer getMoneyId() {
        return moneyId;
    }

    public void setMoneyId(Integer moneyId) {
        this.moneyId = moneyId;
    }

    public Integer getBanId() {
        return banId;
    }

    public void setBanId(Integer banId) {
        this.banId = banId;
    }

    public Integer getAccId() {
        return accId;
    }

    public void setAccId(Integer accId) {
        this.accId = accId;
    }

    public Integer getMoneyPwd() {
        return moneyPwd;
    }

    public void setMoneyPwd(Integer moneyPwd) {
        this.moneyPwd = moneyPwd;
    }

    public Double getBalance() {
        return balance;
    }

    public void setBalance(Double balance) {
        this.balance = balance;
    }
}