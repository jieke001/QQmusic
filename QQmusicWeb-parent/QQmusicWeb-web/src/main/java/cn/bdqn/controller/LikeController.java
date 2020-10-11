package cn.bdqn.controller;

import cn.bdqn.domain.Like;
import cn.bdqn.service.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Controller
@RequestMapping(value = "/like")
public class LikeController {

    @Autowired
    private LikeService likeService;

    /*查询是否存在此歌曲*/
    @RequestMapping(value = "/queryByUidMidSid")
    @ResponseBody
    public Map<String,Object> queryByUidMidSid(@RequestBody Like like){
        int num =likeService.queryByUidMidSid(like);
        System.out.println(num);
        Map<String,Object> result = new HashMap<String,Object>();
        result.put("num",num);

        return result;
    }

    /*新增like歌曲*/
    @RequestMapping(value = "/addLikeMusic")
    @ResponseBody
    public Map<String,Object> addLikeMusic(@RequestBody Like like) {
        int num = likeService.addLikeMusic(like);
        Map<String,Object> result = new HashMap<String, Object>();
        result.put("num",num);
        return result;
    }

    /*根据用户id查询所有喜欢列表*/
    @RequestMapping(value = "/queryByUidLikeList")
    public String queryByUidLikeList(Integer uId, Model model){
        List<Like> likeList = likeService.queryByUidLikeList(uId);
        model.addAttribute("likeList",likeList);
        return "myMusic";
    }

}
