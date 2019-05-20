package com.hbh.entity;

import java.util.Date;

public class Ckretire {
    private String inid;

    private String proid;

    private String pname;

    private Integer num;

    private Date indate;

    private Date retdate;

    private String reason;

    private String marks;

    public String getInid() {
        return inid;
    }

    public void setInid(String inid) {
        this.inid = inid == null ? null : inid.trim();
    }

    public String getProid() {
        return proid;
    }

    public void setProid(String proid) {
        this.proid = proid == null ? null : proid.trim();
    }

    public String getPname() {
        return pname;
    }

    public void setPname(String pname) {
        this.pname = pname == null ? null : pname.trim();
    }

    public Integer getNum() {
        return num;
    }

    public void setNum(Integer num) {
        this.num = num;
    }

    public Date getIndate() {
        return indate;
    }

    public void setIndate(Date indate) {
        this.indate = indate;
    }

    public Date getRetdate() {
        return retdate;
    }

    public void setRetdate(Date retdate) {
        this.retdate = retdate;
    }

    public String getReason() {
        return reason;
    }

    public void setReason(String reason) {
        this.reason = reason == null ? null : reason.trim();
    }

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks == null ? null : marks.trim();
    }
}