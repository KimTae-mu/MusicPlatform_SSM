package com.msic.pojo;

public class MsicComment {
    private Integer msicId;

    private Integer userId;

    private Integer like;

    private String comment;

    public Integer getMsicId() {
        return msicId;
    }

    public void setMsicId(Integer msicId) {
        this.msicId = msicId;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public Integer getLike() {
        return like;
    }

    public void setLike(Integer like) {
        this.like = like;
    }

    public String getComment() {
        return comment;
    }

    public void setComment(String comment) {
        this.comment = comment == null ? null : comment.trim();
    }
}