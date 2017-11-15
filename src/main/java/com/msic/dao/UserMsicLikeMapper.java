package com.msic.dao;

import com.msic.pojo.UserMsicLike;
import com.msic.pojo.UserMsicLikeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMsicLikeMapper {
    int countByExample(UserMsicLikeExample example);

    int deleteByExample(UserMsicLikeExample example);

    int deleteByPrimaryKey(Integer userMsicId);

    int insert(UserMsicLike record);

    int insertSelective(UserMsicLike record);

    List<UserMsicLike> selectByExample(UserMsicLikeExample example);

    UserMsicLike selectByPrimaryKey(Integer userMsicId);

    int updateByExampleSelective(@Param("record") UserMsicLike record, @Param("example") UserMsicLikeExample example);

    int updateByExample(@Param("record") UserMsicLike record, @Param("example") UserMsicLikeExample example);

    int updateByPrimaryKeySelective(UserMsicLike record);

    int updateByPrimaryKey(UserMsicLike record);
}