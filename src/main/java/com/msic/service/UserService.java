package com.msic.service;

import com.msic.pojo.User;

public interface UserService {
    public User findUserByUsernameAndPwd(String email, String password);
}
