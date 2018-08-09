package com.drjt.jiemai.pojo;

public class Position {
    private Integer posId;

    private String posName;

    public Integer getPosId() {
        return posId;
    }

    public void setPosId(Integer posId) {
        this.posId = posId;
    }

    public String getPosName() {
        return posName;
    }

    public void setPosName(String posName) {
        this.posName = posName == null ? null : posName.trim();
    }
}