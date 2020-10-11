package cn.bdqn.controller;

import cn.bdqn.domain.Collect;
import cn.bdqn.service.CollectService;
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
@RequestMapping(value = "/collect")
public class CollectController {

    @Autowired
    private CollectService collectService;

    /*查询是否存在此歌曲*/
    /*value名字不能有一样的存在，否则会分不清除该调用哪一个路径*/
    @RequestMapping(value = "/queryByUidMidSid2")
    @ResponseBody
    public Map<String,Object> queryByUidMidSid(@RequestBody Collect collect){
        int num = collectService.queryByUidMidSid(collect);
        System.out.println(num);
        Map<String,Object> result = new HashMap<String, Object>();
        result.put("num",num);
        return result;
    }

    /*新增收藏*/
    @RequestMapping(value = "/addByCollect")
    @ResponseBody
    public Map<String,Object> addByCollect(@RequestBody Collect collect){
        int num = collectService.addByCollect(collect);
        Map<String,Object> result = new HashMap<String, Object>();
        result.put("num",num);
        return result;
    }

    /*查询用户下所有收藏*/
    @RequestMapping(value = "/queryCollectList")
    public String queryCollectList(Integer uId, Model model){
        List<Collect> collectList = collectService.queryCollectList(uId);
        model.addAttribute("collectList",collectList);
        return "myMusic";
    }

}
