package com.msic.pojo;

public class Music {
    private Integer msicId;

    private String msicName;

    private String msicSinger;

    private String msicAlbum;

    private String msicPic;

    private String msicLrc;

    private String msicLocation;

    private Integer exist;

    public Integer getMsicId() {
        return msicId;
    }

    public void setMsicId(Integer msicId) {
        this.msicId = msicId;
    }

    public String getMsicName() {
        return msicName;
    }

    public void setMsicName(String msicName) {
        this.msicName = msicName == null ? null : msicName.trim();
    }

    public String getMsicSinger() {
        return msicSinger;
    }

    public void setMsicSinger(String msicSinger) {
        this.msicSinger = msicSinger == null ? null : msicSinger.trim();
    }

    public String getMsicAlbum() {
        return msicAlbum;
    }

    public void setMsicAlbum(String msicAlbum) {
        this.msicAlbum = msicAlbum == null ? null : msicAlbum.trim();
    }

    public String getMsicPic() {
        return msicPic;
    }

    public void setMsicPic(String msicPic) {
        this.msicPic = msicPic == null ? null : msicPic.trim();
    }

    public String getMsicLrc() {
        return msicLrc;
    }

    public void setMsicLrc(String msicLrc) {
        this.msicLrc = msicLrc == null ? null : msicLrc.trim();
    }

    public String getMsicLocation() {
        return msicLocation;
    }

    public void setMsicLocation(String msicLocation) {
        this.msicLocation = msicLocation == null ? null : msicLocation.trim();
    }

    public Integer getExist() {
        return exist;
    }

    public void setExist(Integer exist) {
        this.exist = exist;
    }
}