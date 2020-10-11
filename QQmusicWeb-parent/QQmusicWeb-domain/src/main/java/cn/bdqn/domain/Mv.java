package cn.bdqn.domain;

public class Mv {
    private Integer id;

    private Integer musicid;

    private String mvurl;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMusicid() {
        return musicid;
    }

    public void setMusicid(Integer musicid) {
        this.musicid = musicid;
    }

    public String getMvurl() {
        return mvurl;
    }

    public void setMvurl(String mvurl) {
        this.mvurl = mvurl == null ? null : mvurl.trim();
    }
}