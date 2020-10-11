package cn.bdqn.domain;

public class Musictype {
    private Integer id;

    private String songtype;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSongtype() {
        return songtype;
    }

    public void setSongtype(String songtype) {
        this.songtype = songtype == null ? null : songtype.trim();
    }
}