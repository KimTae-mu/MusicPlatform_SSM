package com.msic.dao;

import com.msic.pojo.MusicLike;
import com.msic.pojo.MusicLikeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MusicLikeMapper {
    int countByExample(MusicLikeExample example);

    int deleteByExample(MusicLikeExample example);

    int deleteByPrimaryKey(Integer msicId);

    int insert(MusicLike record);

    int insertSelective(MusicLike record);

    List<MusicLike> selectByExample(MusicLikeExample example);

    MusicLike selectByPrimaryKey(Integer msicId);

    int updateByExampleSelective(@Param("record") MusicLike record, @Param("example") MusicLikeExample example);

    int updateByExample(@Param("record") MusicLike record, @Param("example") MusicLikeExample example);

    int updateByPrimaryKeySelective(MusicLike record);

    int updateByPrimaryKey(MusicLike record);
}