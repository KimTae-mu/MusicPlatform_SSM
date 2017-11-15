package com.msic.service.impl;

import com.msic.dao.UserLikeMapper;
import com.msic.dao.UserMapper;
import com.msic.pojo.*;
import org.springframework.beans.factory.annotation.Autowired;
import com.msic.service.UserService;
import org.springframework.stereotype.Service;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    @Autowired
    private UserLikeMapper userLikeMapper;

    public float[] user_matrix=new float[9];


    public User findUserByUsernameAndPwd(String email,String password) {
//        System.out.println("email" + email + "-----password" + password);
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();

        criteria.andUserEmailEqualTo(email);
        criteria.andUserPasswordEqualTo(password);
        criteria.andExistEqualTo(1);

        List<User> list =userMapper.selectByExample(example);

        if(list != null && list.size() > 0)
            return list.get(0);
        else
            return null;
    }

    public String insertUser(User user) {
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserNameEqualTo(user.getUserName());

        UserExample.Criteria criteria1 = example.createCriteria();
        criteria1.andUserEmailEqualTo(user.getUserEmail());
        example.or(criteria1);

        List<User> list = userMapper.selectByExample(example);
        if(list != null && list.size() > 0){
            return null;
        }else{
            user.setExist(1);
            userMapper.insert(user);
            return "true";
        }
    }

    public User checkName(String userName) {
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserNameEqualTo(userName);

        List<User> list = userMapper.selectByExample(example);

        if(list != null && list.size() > 0){
            return list.get(0);
        }
        return null;
    }

    public User checkEmail(String userEmail) {
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();
        criteria.andUserEmailEqualTo(userEmail);

        List<User> list = userMapper.selectByExample(example);

        if(list != null && list.size() > 0){
            return list.get(0);
        }
        return null;
    }


    /**
     * 用户推荐部分
     * */

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

    public float[] MakeUser_matrix(User user){
        List list = this.Seluser_like(user);
        for(int j=0;j<9;j++){
            user_matrix[j]= (float) list.get(j);
        }
        return user_matrix;
    }

    private List Seluser_like(User user) {
        List userLikeList = new ArrayList();

            try {
                Integer userId = user.getUserId();
                UserLike userLike = userLikeMapper.selectByPrimaryKey(userId);

                userLikeList = this.getList(userLike);
            } catch (Exception e) {
                e.printStackTrace();
            }
        return userLikeList;
    }

}
