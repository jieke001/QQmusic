package cn.bdqn.domain;

import java.util.List;

/*歌曲类*/
public class Music {
    private Integer mId;    //歌曲Id

    private String mName;   //歌曲名

    private String mMusicurl;   //歌曲路径

    private String mTexturl;    //歌词路径

    private String mPhotourl;   //照片路径

    private Integer mSingerid;  //歌手Id

    private Integer mAid;       //专辑Id

    private Integer mVip;       //是否是vip，0是，1否

    private Integer mStatus;    //是否是删除状态

    private List<Singger> singgerList;  //关联歌手对象的list集合

    private List<Lbum> lbumList;    //关联专辑对象的list集合

    public List<Singger> getSinggerList() {
        return singgerList;
    }

    public void setSinggerList(List<Singger> singgerList) {
        this.singgerList = singgerList;
    }

    public List<Lbum> getLbumList() {
        return lbumList;
    }

    public void setLbumList(List<Lbum> lbumList) {
        this.lbumList = lbumList;
    }

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    public String getmName() {
        return mName;
    }

    public void setmName(String mName) {
        this.mName = mName == null ? null : mName.trim();
    }

    public String getmPhotourl() {
        return mPhotourl;
    }

    public void setmPhotourl(String mPhotourl) {
        this.mPhotourl = mPhotourl == null ? null : mPhotourl.trim();
    }

    public String getmMusicurl() {
        return mMusicurl;
    }

    public void setmMusicurl(String mMusicurl) {
        this.mMusicurl = mMusicurl == null ? null : mMusicurl.trim();
    }

    public String getmTexturl() {
        return mTexturl;
    }

    public void setmTexturl(String mTexturl) {
        this.mTexturl = mTexturl == null ? null : mTexturl.trim();
    }

    public Integer getmSingerid() {
        return mSingerid;
    }

    public void setmSingerid(Integer mSingerid) {
        this.mSingerid = mSingerid;
    }

    public Integer getmAid() {
        return mAid;
    }

    public void setmAid(Integer mAid) {
        this.mAid = mAid;
    }

    public Integer getmVip() {
        return mVip;
    }

    public void setmVip(Integer mVip) {
        this.mVip = mVip;
    }

    public Integer getmStatus() {
        return mStatus;
    }

    public void setmStatus(Integer mStatus) {
        this.mStatus = mStatus;
    }
}