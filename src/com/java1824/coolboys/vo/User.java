package com.java1824.coolboys.vo;

public class User {

    private Integer uid;
    private String uname;
    private String upass;
    private String userName;
    private String usex;
    private Integer uage;
    private String utel;
    private String uaddress;

    public User() {
    }

    public User(Integer uid, String uname, String upass, String userName, String usex, Integer uage, String utel, String uaddress) {
        this.uid = uid;
        this.uname = uname;
        this.upass = upass;
        this.userName = userName;
        this.usex = usex;
        this.uage = uage;
        this.utel = utel;
        this.uaddress = uaddress;
    }

    public Integer getUid() {
        return uid;
    }

    public void setUid(Integer uid) {
        this.uid = uid;
    }

    public String getUname() {
        return uname;
    }

    public void setUname(String uname) {
        this.uname = uname;
    }

    public String getUpass() {
        return upass;
    }

    public void setUpass(String upass) {
        this.upass = upass;
    }

    public String getUserName() {
        return userName;
    }

    public void setUserName(String userName) {
        this.userName = userName;
    }

    public String getUsex() {
        return usex;
    }

    public void setUsex(String usex) {
        this.usex = usex;
    }

    public Integer getUage() {
        return uage;
    }

    public void setUage(Integer uage) {
        this.uage = uage;
    }

    public String getUtel() {
        return utel;
    }

    public void setUtel(String utel) {
        this.utel = utel;
    }

    public String getUaddress() {
        return uaddress;
    }

    public void setUaddress(String uaddress) {
        this.uaddress = uaddress;
    }
}
