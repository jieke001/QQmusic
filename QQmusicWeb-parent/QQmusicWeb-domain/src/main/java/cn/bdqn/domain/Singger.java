package cn.bdqn.domain;

/*歌手类*/
public class Singger {
    private Integer sId;

    private String sName;

    private String sPhotoUrl;

    private String sRegion;

    public Integer getsId() {
        return sId;
    }

    public void setsId(Integer sId) {
        this.sId = sId;
    }

    public String getsName() {
        return sName;
    }

    public void setsName(String sName) {
        this.sName = sName == null ? null : sName.trim();
    }

    public String getsPhotoUrl() {
        return sPhotoUrl;
    }

    public void setsPhotoUrl(String sPhotoUrl) {
        this.sPhotoUrl = sPhotoUrl == null ? null : sPhotoUrl.trim();
    }

    public String getsRegion() {
        return sRegion;
    }

    public void setsRegion(String sRegion) {
        this.sRegion = sRegion == null ? null : sRegion.trim();
    }

    @Override
    public String toString() {
        return "Singger{" +
                "sId=" + sId +
                ", sName='" + sName + '\'' +
                ", sPhotourl='" + sPhotoUrl + '\'' +
                ", sRegion='" + sRegion + '\'' +
                '}';
    }
}