package cn.bdqn.domain;

import java.util.List;

/*收藏歌曲类*/
public class Collect {
    private Integer cId;

    private Integer cUid;

    private Integer cMid;

    private Integer cSid;

    private Integer cAid;

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

    public Integer getcId() {
        return cId;
    }

    public void setcId(Integer cId) {
        this.cId = cId;
    }

    public Integer getcUid() {
        return cUid;
    }

    public void setcUid(Integer cUid) {
        this.cUid = cUid;
    }

    public Integer getcMid() {
        return cMid;
    }

    public void setcMid(Integer cMid) {
        this.cMid = cMid;
    }

    public Integer getcSid() {
        return cSid;
    }

    public void setcSid(Integer cSid) {
        this.cSid = cSid;
    }

    public Integer getcAid() {
        return cAid;
    }

    public void setcAid(Integer cAid) {
        this.cAid = cAid;
    }
}