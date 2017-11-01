package com.msic.controller;

import com.msic.pojo.User;
import com.msic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/login")
    public String Login(String username,String password) throws Exception{
        UserService.findUserByUsernameAndPwd(username,password);
        return "";
    }

}
