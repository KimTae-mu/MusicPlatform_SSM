package com.msic.service.impl;

import com.msic.dao.UserMapper;
import com.msic.pojo.User;
import com.msic.pojo.UserExample;
import com.msic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    public User findUserByUsernameAndPwd(String username,String password) {
        UserExample example=new UserExample();
        UserExample.Criteria criteria = example.createCriteria();

        criteria.andUserNameEqualTo(username);
        criteria.andUserPasswordEqualTo(password);

        User user = (User) userMapper.selectByExample(example);
        if(user != null)
            return user;
        else
            return null;
    }
}
