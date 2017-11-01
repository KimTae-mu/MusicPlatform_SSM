package com.msic.controller;

import com.msic.pojo.User;
import com.msic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    //跳转到登录页面
    @RequestMapping("/login")
    public String login() throws Exception{
        return "signin";
    }

    @RequestMapping("/submit")
    public String submit(String email,String password,HttpServletRequest request) throws Exception{

        HttpSession session = request.getSession();
        User user = userService.findUserByUsernameAndPwd(email, password);
        if(user != null){
            session.setAttribute("user",user);
            return "forward:/jsp/index.jsp";
        }
        else
            return "forward:login.action";
    }

}
