package cn.bdqn.domain;

import java.util.Date;

public class Users {
    private Integer uId;

    private String uNumber;

    private String uName;

    private String uPwd;

    private String uSex;

    private Date uBorn;

    private Integer uVipid;

    private Date uRegistertime;

    private String uPhotourl;

    public Integer getuId() {
        return uId;
    }

    public void setuId(Integer uId) {
        this.uId = uId;
    }

    public String getuNumber() {
        return uNumber;
    }

    public void setuNumber(String uNumber) {
        this.uNumber = uNumber == null ? null : uNumber.trim();
    }

    public String getuName() {
        return uName;
    }

    public void setuName(String uName) {
        this.uName = uName == null ? null : uName.trim();
    }

    public String getuPwd() {
        return uPwd;
    }

    public void setuPwd(String uPwd) {
        this.uPwd = uPwd == null ? null : uPwd.trim();
    }

    public String getuSex() {
        return uSex;
    }

    public void setuSex(String uSex) {
        this.uSex = uSex == null ? null : uSex.trim();
    }

    public Date getuBorn() {
        return uBorn;
    }

    public void setuBorn(Date uBorn) {
        this.uBorn = uBorn;
    }

    public Integer getuVipid() {
        return uVipid;
    }

    public void setuVipid(Integer uVipid) {
        this.uVipid = uVipid;
    }

    public Date getuRegistertime() {
        return uRegistertime;
    }

    public void setuRegistertime(Date uRegistertime) {
        this.uRegistertime = uRegistertime;
    }

    public String getuPhotourl() {
        return uPhotourl;
    }

    public void setuPhotourl(String uPhotourl) {
        this.uPhotourl = uPhotourl == null ? null : uPhotourl.trim();
    }
}