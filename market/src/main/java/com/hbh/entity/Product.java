package com.hbh.entity;

import java.util.Date;

public class Product {
    private String proid;

    private String pname;

    private Double price;

    private Double inprice;

    private Date prodate;

    private Date reledate;

    private String supname;

    private String protype;

    private String unit;

    private String marks;
    private Kcxx kcxx;
    
    public Kcxx getkcxx() {
		return kcxx;
	}

	public void setKcxx(Ckin ckxx) {
		this.kcxx = kcxx;
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

    public Double getPrice() {
        return price;
    }

    public void setPrice(Double price) {
        this.price = price;
    }

    public Double getInprice() {
        return inprice;
    }

    public void setInprice(Double inprice) {
        this.inprice = inprice;
    }

    public Date getProdate() {
        return prodate;
    }

    public void setProdate(Date prodate) {
        this.prodate = prodate;
    }

    public Date getReledate() {
        return reledate;
    }

    public void setReledate(Date reledate) {
        this.reledate = reledate;
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
}