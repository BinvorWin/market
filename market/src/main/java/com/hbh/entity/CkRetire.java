package com.hbh.entity;

public class CkRetire {
    private String inid;

    private String proid;

    private String pname;

    private String num;

    private String total;

    private String indate;

    private String retdate;

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

    public String getNum() {
        return num;
    }

    public void setNum(String num) {
        this.num = num == null ? null : num.trim();
    }

    public String getTotal() {
        return total;
    }

    public void setTotal(String total) {
        this.total = total == null ? null : total.trim();
    }

    public String getIndate() {
        return indate;
    }

    public void setIndate(String indate) {
        this.indate = indate == null ? null : indate.trim();
    }

    public String getRetdate() {
        return retdate;
    }

    public void setRetdate(String retdate) {
        this.retdate = retdate == null ? null : retdate.trim();
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

	@Override
	public String toString() {
		return "CkRetire [inid=" + inid + ", proid=" + proid + ", pname=" + pname + ", num=" + num + ", total=" + total
				+ ", indate=" + indate + ", retdate=" + retdate + ", reason=" + reason + ", marks=" + marks + "]";
	}
}