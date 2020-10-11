package cn.bdqn.domain;

import java.util.List;

public class Lbum {
    private Integer aId;

    private String aName;

    private Integer aSid;

    private String aUrl;

    private List<Singger> singgerList;  //关联歌手对象的list集合

    public List<Singger> getSinggerList() {
        return singgerList;
    }

    public void setSinggerList(List<Singger> singgerList) {
        this.singgerList = singgerList;
    }

    public Integer getaId() {
        return aId;
    }

    public void setaId(Integer aId) {
        this.aId = aId;
    }

    public String getaName() {
        return aName;
    }

    public void setaName(String aName) {
        this.aName = aName == null ? null : aName.trim();
    }

    public Integer getaSid() {
        return aSid;
    }

    public void setaSid(Integer aSid) {
        this.aSid = aSid;
    }

    public String getaUrl() {
        return aUrl;
    }

    public void setaUrl(String aUrl) {
        this.aUrl = aUrl == null ? null : aUrl.trim();
    }
}