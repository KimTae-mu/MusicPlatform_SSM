package com.msic.dao;

import com.msic.pojo.MsicComment;
import com.msic.pojo.MsicCommentExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface MsicCommentMapper {
    int countByExample(MsicCommentExample example);

    int deleteByExample(MsicCommentExample example);

    int insert(MsicComment record);

    int insertSelective(MsicComment record);

    List<MsicComment> selectByExampleWithBLOBs(MsicCommentExample example);

    List<MsicComment> selectByExample(MsicCommentExample example);

    int updateByExampleSelective(@Param("record") MsicComment record, @Param("example") MsicCommentExample example);

    int updateByExampleWithBLOBs(@Param("record") MsicComment record, @Param("example") MsicCommentExample example);

    int updateByExample(@Param("record") MsicComment record, @Param("example") MsicCommentExample example);
}