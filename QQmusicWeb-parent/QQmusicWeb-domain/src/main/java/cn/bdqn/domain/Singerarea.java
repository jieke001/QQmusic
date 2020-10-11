package cn.bdqn.domain;

public class Singerarea {
    private Integer id;

    private String singerarea;

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getSingerarea() {
        return singerarea;
    }

    public void setSingerarea(String singerarea) {
        this.singerarea = singerarea == null ? null : singerarea.trim();
    }
}