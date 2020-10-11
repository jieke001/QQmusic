package cn.bdqn.domain;

import java.util.List;

public class Like {
    private Integer lId;

    private Integer lUid;

    private Integer lMid;

    private Integer lSid;

    private Integer lAid;

    /*关联歌手实体类对象*/
    private List<Singger> singgerList;

    /*关联歌曲实体类对象*/
    private List<Music> musicList;

    /*关联专辑实体类对象*/
    private List<Lbum> lbumList;

    public List<Singger> getSinggerList() {
        return singgerList;
    }

    public void setSinggerList(List<Singger> singgerList) {
        this.singgerList = singgerList;
    }

    public List<Music> getMusicList() {
        return musicList;
    }

    public void setMusicList(List<Music> musicList) {
        this.musicList = musicList;
    }

    public List<Lbum> getLbumList() {
        return lbumList;
    }

    public void setLbumList(List<Lbum> lbumList) {
        this.lbumList = lbumList;
    }

    public Integer getlId() {
        return lId;
    }

    public void setlId(Integer lId) {
        this.lId = lId;
    }

    public Integer getlUid() {
        return lUid;
    }

    public void setlUid(Integer lUid) {
        this.lUid = lUid;
    }

    public Integer getlMid() {
        return lMid;
    }

    public void setlMid(Integer lMid) {
        this.lMid = lMid;
    }

    public Integer getlSid() {
        return lSid;
    }

    public void setlSid(Integer lSid) {
        this.lSid = lSid;
    }

    public Integer getlAid() {
        return lAid;
    }

    public void setlAid(Integer lAid) {
        this.lAid = lAid;
    }
}