package com.hbh.entity;

public class CusRetire {
    private String saleid;

    private String proid;

    private String pname;

    private String price;

    private String num;

    private String total;

    private String saledate;

    private String retdate;

    private String reason;

    private String marks;

    public String getSaleid() {
        return saleid;
    }

    public void setSaleid(String saleid) {
        this.saleid = saleid == null ? null : saleid.trim();
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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
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

    public String getSaledate() {
        return saledate;
    }

    public void setSaledate(String saledate) {
        this.saledate = saledate == null ? null : saledate.trim();
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
		return "CusRetire [saleid=" + saleid + ", proid=" + proid + ", pname=" + pname + ", price=" + price + ", num="
				+ num + ", total=" + total + ", saledate=" + saledate + ", retdate=" + retdate + ", reason=" + reason
				+ ", marks=" + marks + "]";
	}
}