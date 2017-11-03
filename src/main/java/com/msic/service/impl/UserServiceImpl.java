package com.msic.service.impl;

import com.msic.dao.UserMapper;
import com.msic.pojo.User;
import com.msic.pojo.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import com.msic.service.UserService;
import org.springframework.stereotype.Service;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.List;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User findUserByUsernameAndPwd(String email,String password) {
//        System.out.println("email" + email + "-----password" + password);
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();

        criteria.andUserEmailEqualTo(email);
        criteria.andUserPasswordEqualTo(password);

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

}
