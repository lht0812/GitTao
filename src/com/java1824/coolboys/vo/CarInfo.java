package com.java1824.coolboys.vo;

public class CarInfo {

    private Integer carid;
    private Integer goodsid;
    private String goodsname;
    private Float goodprice;
    private Integer goodssize;

    public CarInfo() {
    }

    public CarInfo(Integer carid, Integer goodsid, String goodsname, Float goodprice, Integer goodssize) {
        this.carid = carid;
        this.goodsid = goodsid;
        this.goodsname = goodsname;
        this.goodprice = goodprice;
        this.goodssize = goodssize;
    }

    public Integer getCarid() {
        return carid;
    }

    public void setCarid(Integer carid) {
        this.carid = carid;
    }

    public Integer getGoodsid() {
        return goodsid;
    }

    public void setGoodsid(Integer goodsid) {
        this.goodsid = goodsid;
    }

    public String getGoodsname() {
        return goodsname;
    }

    public void setGoodsname(String goodsname) {
        this.goodsname = goodsname;
    }

    public Float getGoodprice() {
        return goodprice;
    }

    public void setGoodprice(Float goodprice) {
        this.goodprice = goodprice;
    }

    public Integer getGoodssize() {
        return goodssize;
    }

    public void setGoodssize(Integer goodssize) {
        this.goodssize = goodssize;
    }
}
