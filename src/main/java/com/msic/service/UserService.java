package com.msic.service;

import com.msic.pojo.User;

public interface UserService {
    User findUserByUsernameAndPwd(String username, String password);
}
