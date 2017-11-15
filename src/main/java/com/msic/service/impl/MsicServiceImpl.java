package com.msic.service.impl;

import com.msic.dao.MusicLikeMapper;
import com.msic.dao.MusicMapper;
import com.msic.pojo.Music;
import com.msic.pojo.MusicExample;
import com.msic.pojo.MusicLike;
import com.msic.service.MsicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@Service
public class MsicServiceImpl implements MsicService {

    @Autowired
    private MusicMapper musicMapper;

    @Autowired
    private MusicLikeMapper musicLikeMapper;


    public float[][] recom_matrix=new float[10][9];


    @Override
    public Music selectMsicById(Integer id) {
        MusicExample example=new MusicExample();
        MusicExample.Criteria criteria = example.createCriteria();
        criteria.andExistEqualTo(1);
        criteria.andMsicIdEqualTo(id);

        List<Music> musicList = musicMapper.selectByExample(example);

        if(musicList != null && musicList.size() > 0){
            return musicList.get(0);
        }else
            return null;
    }


    /**
     * 歌曲推荐部分
     * */
    public float[][] MakeRecom_matrix(){
        for(int i=0;i<10;i++){
            List list = this.Selmsic_like();
            for(int j=0;j<9;j++){
                recom_matrix[i][j]= (float) list.get(j);
            }
        }
        return recom_matrix;
    }

    /**
     *   xxxx source = new xxxx();
         Method[] sourceMethods = source.getClass().getMethods();
         for(int i=0;i<sourceMethods.length;i++){
             if(sourceMethods[i].getName().startsWith("get")){
                 lsName = sourceMethods[i].getName().substring(3);   // 属性
                 Object loValue = sourceMethods[i].invoke(source, null);  // 值
                 String lsSourceType = sourceMethods[i].getReturnType().getName(); //类型
             }
         }*/
    private List getList(Object object) throws Exception {
        List list=new ArrayList();
        Method[] methods = object.getClass().getMethods();
        for (int i=0;i<methods.length;i++){
            if(methods[i].getName().startsWith("get")){
                list.add(methods[i].invoke(object.getClass()));
            }
        }
        return list;
    }

    private List Selmsic_like() {
        /*SELECT *
            FROM `table` AS t1 JOIN (SELECT ROUND(RAND() * ((SELECT MAX(id) FROM `table`)-(SELECT MIN(id) FROM `table`))+(SELECT MIN(id) FROM `table`)) AS id) AS t2
            WHERE t1.id >= t2.id
            ORDER BY t1.id LIMIT 1;*/

        List<Music> musicList = musicMapper.selectMsicRandom();
        List musicLikeList = new ArrayList();


        if (musicList != null && musicList.size() > 0){
            try {
                Integer msicId = musicList.get(0).getMsicId();
                MusicLike musicLike = musicLikeMapper.selectByPrimaryKey(msicId);

                musicLikeList = this.getList(musicLike);
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return musicLikeList;
    }
}
