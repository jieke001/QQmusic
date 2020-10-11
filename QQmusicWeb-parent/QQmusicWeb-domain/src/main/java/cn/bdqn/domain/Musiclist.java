package cn.bdqn.domain;

public class Musiclist {
    private Integer mId;

    private Integer mUid;

    private Integer mMid;

    private Integer mSid;

    private Integer mTid;

    private String mMname;

    private String mSname;

    private String mTname;

    private Integer mAid;

    private String mAname;

    public Integer getmId() {
        return mId;
    }

    public void setmId(Integer mId) {
        this.mId = mId;
    }

    public Integer getmUid() {
        return mUid;
    }

    public void setmUid(Integer mUid) {
        this.mUid = mUid;
    }

    public Integer getmMid() {
        return mMid;
    }

    public void setmMid(Integer mMid) {
        this.mMid = mMid;
    }

    public Integer getmSid() {
        return mSid;
    }

    public void setmSid(Integer mSid) {
        this.mSid = mSid;
    }

    public Integer getmTid() {
        return mTid;
    }

    public void setmTid(Integer mTid) {
        this.mTid = mTid;
    }

    public String getmMname() {
        return mMname;
    }

    public void setmMname(String mMname) {
        this.mMname = mMname == null ? null : mMname.trim();
    }

    public String getmSname() {
        return mSname;
    }

    public void setmSname(String mSname) {
        this.mSname = mSname == null ? null : mSname.trim();
    }

    public String getmTname() {
        return mTname;
    }

    public void setmTname(String mTname) {
        this.mTname = mTname == null ? null : mTname.trim();
    }

    public Integer getmAid() {
        return mAid;
    }

    public void setmAid(Integer mAid) {
        this.mAid = mAid;
    }

    public String getmAname() {
        return mAname;
    }

    public void setmAname(String mAname) {
        this.mAname = mAname == null ? null : mAname.trim();
    }
}