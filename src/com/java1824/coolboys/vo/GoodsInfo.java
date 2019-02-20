package com.java1824.coolboys.vo;

public class GoodsInfo {

    private Integer goodsid;
    private String goodsname;
    private Float goodsprice;
    private String goodssum;
    private String author;
    private String press;
    private String timemarket;

    public GoodsInfo() {
    }

    public GoodsInfo(Integer goodsid, String goodsname, Float goodsprice, String goodssum, String author, String press, String timemarket) {
        this.goodsid = goodsid;
        this.goodsname = goodsname;
        this.goodsprice = goodsprice;
        this.goodssum = goodssum;
        this.author = author;
        this.press = press;
        this.timemarket = timemarket;
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

    public Float getGoodsprice() {
        return goodsprice;
    }

    public void setGoodsprice(Float goodsprice) {
        this.goodsprice = goodsprice;
    }

    public String getGoodssum() {
        return goodssum;
    }

    public void setGoodssum(String goodssum) {
        this.goodssum = goodssum;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public String getPress() {
        return press;
    }

    public void setPress(String press) {
        this.press = press;
    }

    public String getTimemarket() {
        return timemarket;
    }

    public void setTimemarket(String timemarket) {
        this.timemarket = timemarket;
    }
}
