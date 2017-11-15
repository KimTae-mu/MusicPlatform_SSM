package com.msic.controller;

import com.msic.pojo.Music;
import com.msic.pojo.User;
import com.msic.service.MsicService;
import com.msic.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
@RequestMapping("/msic")
public class MsicController {

    @Autowired
    private MsicService msicService;

    @Autowired
    private UserService userService;

    @RequestMapping("/selectDiscover")
    public String SelectDiscover(HttpServletRequest request) throws Exception{

        float[] user_msic=new float[9];
        int index=1,tip=1;
        List<Music> musicList=new ArrayList<Music>();

        HttpSession session = request.getSession();
        Object user = session.getAttribute("user");
        if (user != null){
            User user1= (User) user;

            do {
                float[][] msic_matrix = msicService.MakeRecom_matrix();
                float[] user_matrix = userService.MakeUser_matrix(user1);

                for(int i=1;i<10;i++){
                    for(int j=1;j<9;j++){
                        user_msic[i]+=msic_matrix[i][j]*user_matrix[j];
                    }
                }
                for(int i=1;i<9;i++){
                    if(user_msic[index] < user_msic[i]){
                        index=i;
                    }
                }
                musicList.add(msicService.selectMsicById((int) msic_matrix[index-1][0]));
                tip++;
            }while (tip < 9);

        }else {
            msicService.MakeRecom_matrix();
        }

        return null;
    }
}
