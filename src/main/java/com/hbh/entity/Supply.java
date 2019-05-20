package com.hbh.entity;

public class Supply {
    private String supid;

    private String suppname;

    private String tel;

    private String person;

    private String address;

    private String emali;

    public String getSupid() {
        return supid;
    }

    public void setSupid(String supid) {
        this.supid = supid == null ? null : supid.trim();
    }

    public String getSuppname() {
        return suppname;
    }

    public void setSuppname(String suppname) {
        this.suppname = suppname == null ? null : suppname.trim();
    }

    public String getTel() {
        return tel;
    }

    public void setTel(String tel) {
        this.tel = tel == null ? null : tel.trim();
    }

    public String getPerson() {
        return person;
    }

    public void setPerson(String person) {
        this.person = person == null ? null : person.trim();
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address == null ? null : address.trim();
    }

    public String getEmali() {
        return emali;
    }

    public void setEmali(String emali) {
        this.emali = emali == null ? null : emali.trim();
    }
}