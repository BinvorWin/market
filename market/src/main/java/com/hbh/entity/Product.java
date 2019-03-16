package com.hbh.entity;

public class Product {
    private String proid;

    private String pname;

    private String price;

    private String inprice;

    private String prodate;

    private String reledate;

    private String supname;

    private String protype;

    private String unit;

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

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price == null ? null : price.trim();
    }

    public String getInprice() {
        return inprice;
    }

    public void setInprice(String inprice) {
        this.inprice = inprice == null ? null : inprice.trim();
    }

    public String getProdate() {
        return prodate;
    }

    public void setProdate(String prodate) {
        this.prodate = prodate == null ? null : prodate.trim();
    }

    public String getReledate() {
        return reledate;
    }

    public void setReledate(String reledate) {
        this.reledate = reledate == null ? null : reledate.trim();
    }

    public String getSupname() {
        return supname;
    }

    public void setSupname(String supname) {
        this.supname = supname == null ? null : supname.trim();
    }

    public String getProtype() {
        return protype;
    }

    public void setProtype(String protype) {
        this.protype = protype == null ? null : protype.trim();
    }

    public String getUnit() {
        return unit;
    }

    public void setUnit(String unit) {
        this.unit = unit == null ? null : unit.trim();
    }

    public String getMarks() {
        return marks;
    }

    public void setMarks(String marks) {
        this.marks = marks == null ? null : marks.trim();
    }

	@Override
	public String toString() {
		return "Product [proid=" + proid + ", pname=" + pname + ", price=" + price + ", inprice=" + inprice
				+ ", prodate=" + prodate + ", reledate=" + reledate + ", supname=" + supname + ", protype=" + protype
				+ ", unit=" + unit + ", marks=" + marks + "]";
	}
}