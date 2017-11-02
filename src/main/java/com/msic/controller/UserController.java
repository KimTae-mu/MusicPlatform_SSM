package com.msic.controller;

import com.msic.pojo.User;
import com.msic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;

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

    @RequestMapping("/signup")
    public String singup() throws Exception{
        return "signup";
    }

    @RequestMapping("/submit")
    public String submit(String email,String password,HttpServletRequest request) throws Exception{

        System.out.println(email);
        HttpSession session = request.getSession();
        User user = userService.findUserByUsernameAndPwd(email, password);
        if(user != null){
            session.setAttribute("user",user);
            return "forward:/jsp/index.jsp";
        }
        else
            return "forward:login.action";
    }

    @RequestMapping("/register")
    public String register(User user){
        String s = userService.insertUser(user);
        if (s != "true"){
            return "forward:singup.action";
        }
        return "forward:login.action";
    }

    @RequestMapping("/checkCode")
    public String checkCode(User user, HttpServletResponse response) throws Exception{
        User u=userService.checkCode(user.getUserName());
        System.out.println(u);
        try {
            PrintWriter writer = response.getWriter();
            if(u != null){
                System.out.println("no");
                writer.print("no");
            }else {
                writer.print("yes");
            }
        }catch (Exception e){
            e.printStackTrace();
        }
        return null;
    }

}
