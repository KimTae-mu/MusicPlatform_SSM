package com.msic.dao;

import com.msic.pojo.Music;
import com.msic.pojo.MusicExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MusicMapper {
    int countByExample(MusicExample example);

    int deleteByExample(MusicExample example);

    int deleteByPrimaryKey(Integer msicId);

    int insert(Music record);

    int insertSelective(Music record);

    List<Music> selectByExample(MusicExample example);

    Music selectByPrimaryKey(Integer msicId);

    int updateByExampleSelective(@Param("record") Music record, @Param("example") MusicExample example);

    int updateByExample(@Param("record") Music record, @Param("example") MusicExample example);

    int updateByPrimaryKeySelective(Music record);

    int updateByPrimaryKey(Music record);

    List<Music> selectMsicRandom();
}