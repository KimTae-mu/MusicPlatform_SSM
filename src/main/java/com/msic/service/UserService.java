package com.msic.service;

import com.msic.pojo.User;

public interface UserService {
    public User findUserByUsernameAndPwd(String email, String password);

    public String insertUser(User user);

    public User checkName(String userName);

    public User checkEmail(String userEmail);
}
