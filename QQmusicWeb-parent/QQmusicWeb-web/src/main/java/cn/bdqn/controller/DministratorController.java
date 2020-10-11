package cn.bdqn.controller;

import cn.bdqn.domain.Dministrator;
import cn.bdqn.service.DministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/admin")
public class DministratorController {

    @Autowired
    private DministratorService dministratorService;

    /*管理员登录*/
    @RequestMapping(value = "/queryAdminLogin")
    @ResponseBody
    public Map<String,Object> queryAdminLogin(@RequestBody Dministrator dministrator){

        System.out.println(dministrator.getUsername());
        System.out.println(dministrator.getPassword());

        Dministrator num = dministratorService.queryAdminLogin(dministrator);

        System.out.println(num);

        if(num==null){
            System.out.println("登陆失败");
        }

        Map<String,Object> result = new HashMap<String, Object>();

        result.put("num",num);

        return result;
    }



}
