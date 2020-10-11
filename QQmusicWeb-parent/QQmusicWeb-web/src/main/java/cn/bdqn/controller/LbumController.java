package cn.bdqn.controller;

import cn.bdqn.domain.Lbum;
import cn.bdqn.domain.Singger;
import cn.bdqn.service.LbumService;
import cn.bdqn.service.SinggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.util.List;

@Controller
@RequestMapping(value = "/lbum")
public class LbumController {

    @Autowired
    private LbumService lbumService;

    @Autowired
    private SinggerService singgerService;

    /*专辑图片上传*/
    @RequestMapping(value = "/lbumUpload",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String aUrlUpload(HttpServletRequest request, MultipartFile aUrls) throws Exception{
        /*1 得到文件上传的路径*/
        String path = request.getServletContext().getRealPath("/upload/");
        System.out.println(path);
        File destPath = new File(path);
        if(!destPath.exists()){
            destPath.mkdir();
        }

        /*获得头像名称*/
        String name = aUrls.getName();
        System.out.println(name);

        /*获得头像原始名称*/
        String originalFileName = aUrls.getOriginalFilename();
        System.out.println(originalFileName);

        /*文件上传*/
        File file = new File(destPath,originalFileName);
        aUrls.transferTo(file);

        return originalFileName;
    }

    /*查询歌手名列表*/
    @RequestMapping(value = "/querySinggerSnameList")
    public String querySinggerSnameList(Model model){
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "addalbum";
    }

    /*关联歌手表查询歌手名字和所有专辑*/
    @RequestMapping(value = "/queryLbumList")
    public String queryLbumList(Model model){
        List<Lbum> lbumList = lbumService.queryLbumList();
        model.addAttribute("lbumList",lbumList);
        return "albumInfo";
    }

    /*添加新的专辑*/
    @RequestMapping(value = "/addLbum")
    public String addLbum(Lbum lbum, Model model){
        lbumService.addLbum(lbum);
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "addalbum";
    }

    /*根据专辑id查询专辑信息*/
    @RequestMapping(value = "/queryLbumById")
    public String queryLbumById(Integer aId,Model model){
        Lbum lbum = lbumService.queryLbumById(aId);
        model.addAttribute("lbum",lbum);
        List<Singger> singgers = singgerService.querySinggerList();
        model.addAttribute("singgers",singgers);
        return "updateAlbum";
    }

    /*修改专辑信息*/
    @RequestMapping(value = "/updateLbum")
    public String updateLbum(Lbum lbum, Model model){
        lbumService.updateLbum(lbum);
        List<Lbum> lbumList = lbumService.queryLbumList();
        model.addAttribute("lbumList",lbumList);
        return "albumInfo";
    }

    /*根据专辑id删除专辑*/
    @RequestMapping("/delLbumById")
    public String delLbumById(Integer aId,Model model){
        lbumService.delLbumById(aId);
        List<Lbum> lbumList = lbumService.queryLbumList();
        model.addAttribute("lbumList",lbumList);
        return "albumInfo";
    }

}
