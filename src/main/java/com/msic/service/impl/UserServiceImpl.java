package com.msic.service.impl;

import com.msic.dao.UserMapper;
import com.msic.pojo.User;
import com.msic.pojo.UserExample;
import org.springframework.beans.factory.annotation.Autowired;
import com.msic.service.UserService;
import org.springframework.stereotype.Service;

import javax.jws.soap.SOAPBinding;
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

        if(list.size() > 0)
            return list.get(0);
        else
            return null;
    }

}
