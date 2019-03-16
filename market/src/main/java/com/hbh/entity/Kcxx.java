package com.hbh.entity;

public class Kcxx {
    private String proid;

    private String pname;

    private String num;

    private String marks;

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

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks == null ? null : marks.trim();
    }

	@Override
	public String toString() {
		return "Kcxx [proid=" + proid + ", pname=" + pname + ", num=" + num + ", marks=" + marks + "]";
	}
}