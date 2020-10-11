package cn.bdqn.controller;

import cn.bdqn.domain.Singger;
import cn.bdqn.service.SinggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping(value = "/singger")
public class SinggerController {

    @Autowired
    private SinggerService singgerService;

    /*歌手照片路径文件上传*/
    @RequestMapping(value = "/SPhotoUrlUpload")
    @ResponseBody
    public String SPhotoUrlUpload(HttpServletRequest request, @RequestParam("sPhotoUrls") MultipartFile touxiang) throws Exception{
            //得到文件上传的路径
        String path = request.getServletContext().getRealPath("/upload/");
        File destPath = new File(path);
        if (!destPath.exists()){
            destPath.mkdirs();
        }

        /*获得名称*/
        String name = touxiang.getName();
        System.out.println(name);

        /*获得原始名称*/
        String originalFilename= touxiang.getOriginalFilename();
        System.out.println(originalFilename);

        /*文件上传*/
        File file = new File(destPath,originalFilename);
        touxiang.transferTo(file);

        return originalFilename;

    }

    /*添加歌手信息*/
    @RequestMapping(value = "/insertSingger")
    public String insertSingger(Singger singger, Model model){
        int num = singgerService.insertSingger(singger);
        return "addsinger";
    }

    /*查询所有歌手信息*/
    @RequestMapping(value = "/querySinggerList")
    public String querySinggerList(Model model){
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "singerinfo";
    }

    /*根据id删除指定歌手的信息*/
    @RequestMapping(value = "/delSinggerId")
    public String delSinggerId(Integer sId,Model model){
        int num =singgerService.delSinggerId(sId);
      /*  if(num==1){
            model.addAttribute("delSingger",1);
        }else{
            model.addAttribute("delSingger",-1);
        }*/
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "singerinfo";
    }

    /*根据歌手id查询歌手信息*/
    @RequestMapping(value = "/querySinggerById")
    public String querySinggerById(Integer sId,Model model){
        Singger singger = singgerService.querySinggerById(sId);
        model.addAttribute("singger",singger);
        return "updateSinger";
    }

    /*修改歌手信息*/
    @RequestMapping(value = "/updateSingger")
    public String updateSingger(Singger singger, Model model){
        singgerService.updateSingger(singger);
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "singerinfo";
    }

}
