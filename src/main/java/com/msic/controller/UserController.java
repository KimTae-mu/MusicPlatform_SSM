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
        @RequestMapping("/signin")
    public String signin() throws Exception{
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
            return "redirect:/jsp/index.jsp";
        }
        else{
            request.setAttribute("loginmsg","用户名或密码错误！！！");
            return "forward:signin.action";
        }
    }

    @RequestMapping("/register")
    public String register(User user,HttpServletRequest request){
        System.out.println("user====="+user);
        if(user.getUserName().length()==0 || user.getUserEmail().length()==0 || user.getUserPassword().length()==0){
//            return "forward:singup.action";
            System.out.println("有东西为空了");
        }
        String s = userService.insertUser(user);
        System.out.println("s==="+s);
        if (s == null){
            request.setAttribute("msg","该用户已被注册！！！");
            return "forward:signup.action";
        }
        return "forward:signin.action";
    }

    @RequestMapping("/checkName")
    public String checkName(User user, HttpServletResponse response) throws Exception{
        User u=userService.checkName(user.getUserName());
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

    @RequestMapping("/checkEmail")
    public String checkEmail(User user,HttpServletResponse response) throws Exception{
        User u=userService.checkEmail(user.getUserEmail());
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

    @RequestMapping("/ReLogin")
    public String ReLogin(String password,HttpServletRequest request) throws Exception{

        System.out.println("Relogin");
//        if(password)

        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        User user1= userService.findUserByUsernameAndPwd(user.getUserEmail(), password);

        if(user1 != null){
            return "redirect:/jsp/index.jsp";
        }
        else{
            request.setAttribute("loginmsg","密码错误！！！");
            return "modal.lockme";
        }
    }

}
