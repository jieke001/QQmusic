package cn.bdqn.controller;


import cn.bdqn.domain.Like;
import cn.bdqn.domain.Users;
import cn.bdqn.service.LikeService;
import cn.bdqn.service.UsersService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import util.PageSupport;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value="/user")
public class UsersController {
    @Autowired
    private UsersService usersService;

    @Autowired
    private LikeService likeService;

    /*用户注册*/
    @RequestMapping(value = "/insert")
    public String insert(Model model, Users users){
        usersService.insert(users);
        String username = users.getuName();
        model.addAttribute("username",username);
        return "login";
    }

    /*跳转到登录页面*/
    @RequestMapping(value = "/translate2login")
    public String translate2login(HttpServletRequest request,HttpServletResponse response) throws IOException {

        /*response.sendRedirect(request.getContextPath() + "/login.jsp");*/
        return "login";
    }

    /*用户登录*/
    @RequestMapping(value = "/login")
    @ResponseBody
    public Map<String, Object> login(Model model, @RequestBody Users users, HttpServletResponse response, HttpServletRequest request) throws Exception{

            System.out.println(users.getuName()+"\t"+users.getuPwd());
        Users users2 = usersService.selectByUsernameAndPassword(users);

        if(users2!=null){ //登录成功
            request.getSession().setAttribute(PageSupport.USER_SESSION,users2);
        }

        /*登录成功后查询用户歌曲喜欢列表*/
        List<Like> likeList = likeService.queryLikeList();

        /*如果不为空，则把喜欢列表likeList放入session中*/
        if(likeList!=null){
            request.getSession().setAttribute(PageSupport.MUSIC_LIKE,likeList);
        }

        Map<String,Object> result = new HashMap<String, Object>();
        result.put("user2",users2);


        return result;
    }

    /*用户退出*/
    @RequestMapping(value = "/exitUser")
    public String exitUser(HttpServletRequest request){
        request.getSession().removeAttribute(PageSupport.USER_SESSION);
        return "QQMusicManin2";
    }

    /*用户登录成功页面*/
    @RequestMapping(value = "/QQMusicManin2")
    public String main(){
        return "QQMusicManin2";
    }

    /*用户注册*/
    @RequestMapping("/test")
    public String test(){
        return "addUser";
    }
}
