package com.hbh.entity;

public class Type {
    private String protypeid;

    private String typename;

    public String getProtypeid() {
        return protypeid;
    }

    public void setProtypeid(String protypeid) {
        this.protypeid = protypeid == null ? null : protypeid.trim();
    }

    public String getTypename() {
        return typename;
    }

    public void setTypename(String typename) {
        this.typename = typename == null ? null : typename.trim();
    }
}