package cn.bdqn.controller;

import cn.bdqn.domain.Lbum;
import cn.bdqn.domain.Music;
import cn.bdqn.domain.Singger;
import cn.bdqn.service.LbumService;
import cn.bdqn.service.MusicService;
import cn.bdqn.service.SinggerService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import util.LrcSameAsSong;

import javax.servlet.ServletOutputStream;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.List;

@Controller
@RequestMapping(value = "/music")
public class MusicServiceController {

    @Autowired
    private MusicService musicService;

    @Autowired
    private SinggerService singgerService;

    @Autowired
    private LbumService lbumService;

    /*歌曲、歌词、歌曲图片文件上传*/
    @RequestMapping(value = "/musicTextPhotoUrlUpload",produces = {"text/html;charset=utf-8"})
    @ResponseBody
    public String musicTextPhotoUrlUpload(HttpServletRequest request,@RequestParam("urls") MultipartFile[] files) throws Exception{
        String path = request.getServletContext().getRealPath("/upload/");

        /*定义文件*/
        File destPath = new File(path);
        if(!destPath.exists()){
            destPath.mkdirs();
        }

        String oldName = "";
        /*判断file数组不能为空并且长度大于0*/
        if(files!=null && files.length >0){
            /*循环获取file数组中得到文件*/
            for (int i = 0;i<files.length;i++){
                MultipartFile file = files[i];
                oldName = file.getOriginalFilename();
                file.transferTo(new File(destPath,oldName));
            }
        }
        return oldName;
    }

    /*歌曲下载*/
    @RequestMapping(value = "/musicDownload")
    public void musicDownload(Integer mId, HttpServletRequest request, HttpServletResponse response) throws IOException {

        Music music = musicService.queryMusicById(mId);

        /*歌曲名，字符编码需要转换成utf-8，转换成的文件后缀名需要加上（.mp3）*/
        String mName = URLEncoder.encode(music.getmName(),"utf-8");

        String mText = URLEncoder.encode(music.getmTexturl(),"utf-8");

        /*设置响应流文件下载*/
        response.setHeader("Content-Disposition","attachment;filename="+mName+".mp3");

        response.setHeader("Content-Disposition","attachment;filename="+mText);

       /*歌曲绝对路径*/
        String realPath = request.getServletContext().getRealPath("/upload/");
        String mNamePath = realPath + music.getmMusicurl();
        String mTextPath = realPath + music.getmTexturl();
        System.out.println(mNamePath);
        System.out.println(mTextPath);

        FileInputStream fis = new FileInputStream(mNamePath);

        ServletOutputStream sos = response.getOutputStream();

        byte [] buffer = new byte[1024];

        int len = 0;

        while ((len = fis.read(buffer)) != -1){
            /*将读取的文件写到浏览器中*/
            sos.write(buffer,0,len);
        }

        sos.flush();
        sos.close();
        fis.close();
    }

    /*获取本地下载的歌曲*/
    @RequestMapping(value = "/showDownload")
    public void showDownload(Integer mId,HttpServletRequest request,HttpServletResponse response) throws UnsupportedEncodingException {

        Music music = musicService.queryMusicById(mId);

        /*歌曲名，字符编码需要转换成utf-8，转换成的文件后缀名需要加上（.mp3）*/
        //String downlaodFilename = URLEncoder.encode(music.getmName(),"utf-8");

        /*歌曲绝对路径*/
        String realPath = "C:\\Users\\邵杰\\Downloads";
        String urlPath = realPath + music.getmMusicurl();
        System.out.println(urlPath);



    }

    /*查询歌手名列表*/
    @RequestMapping(value = "/querySinggerSnameList")
    public String querySinggerSnameList(Model model) {
        List<Singger> singgers = singgerService.querySinggerList();
        List<Lbum> lbums = lbumService.queryLbumList();
        model.addAttribute("singgers", singgers);
        model.addAttribute("lbums", lbums);
        return "addsong";
    }

    /*查询所有音乐*/
    @RequestMapping(value = "/queryMusicList")
    public String queryMusicList(Model model) {
        List<Music> musicList = musicService.queryMusicList();
        model.addAttribute("musicList", musicList);
        return "songInfo";
    }

    /*查询所有音乐跳转到SongListj的sp页面*/
    @RequestMapping(value = "/queryMusicList2")
    public String queryMusicList2(Model model) {
        List<Music> musicList = musicService.queryMusicList();
        model.addAttribute("songList", musicList);
        return "SongList";
    }

    /*添加新的歌曲*/
    @RequestMapping(value = "/addMusic")
    public String addMusic(Music music, Model model) {
        musicService.addMusic(music);
        List<Music> musicList = musicService.queryMusicList();
        model.addAttribute("musicList", musicList);
        return "addsong";
    }

    /*根据歌曲id查询歌曲*/
    @RequestMapping(value = "/queryMusicById")
    public String queryMusicById(Integer mId, Model model) {
        Music music = musicService.queryMusicById(mId);
        model.addAttribute("music", music);
        List<Singger> singgers = singgerService.querySinggerList();
        List<Lbum> lbums = lbumService.queryLbumList();
        model.addAttribute("singgers", singgers);
        model.addAttribute("lbums", lbums);
        return "updateSong";
    }

    /*修改歌曲*/
    @RequestMapping(value = "/updateMusic")
    public String updateMusic(Music music, Model model) {
        musicService.updateMusic(music);
        List<Music> musicList = musicService.queryMusicList();
        model.addAttribute("musicList", musicList);
        return "songInfo";
    }

    /*根据歌曲id删除歌曲*/
    @RequestMapping(value = "/delMusicById")
    public String delMusicById(Integer mId, Model model) {
        musicService.delMusicById(mId);
        List<Music> musicList = musicService.queryMusicList();
        model.addAttribute("musicList", musicList);
        return "songInfo";
    }

    /*播放音乐*/
    @RequestMapping(value = "/playMusic")
    public String playMusic(Music music, HttpServletRequest request, HttpServletResponse response){

        StringBuilder builder = new StringBuilder();

        /*歌曲id*/
        /*int mId = Integer.parseInt(request.getParameter("mId"));*/
        int mId = music.getmId();
        System.out.println(mId);

        if(builder.length()>0){
            builder.append(",").append(mId);
        }else{
            builder.append(mId);
        }

        Cookie cookie = new Cookie("mId",builder.toString());
        response.addCookie(cookie);

        /*获取歌曲名*/
        String mName = music.getmName();
        System.out.println(mName);

        /*获取歌曲路径*/
        String musicurl =music.getmMusicurl();
        System.out.println(musicurl);

        /*获取歌词路径*/
        String texturl = music.getmTexturl();
        System.out.println(texturl);

        /*获取照片路径*/
        String photourl = music.getmPhotourl();
        System.out.println(photourl);

        /*获取歌手名字*/
        /*String getsName = music.getSinggerList().get(0).getsName();*/
        String getsName = request.getParameter("sName");
        System.out.println(getsName);

        /*获取专辑名字*/
       /* String getaName = music.getLbumList().get(0).getaName();*/
        String getaName = request.getParameter("aName");
        System.out.println(getaName);

        /*获取歌词真实路径*/
        String saveFileDir = request.getServletContext().getRealPath("/upload/");

        /*获取歌词绝对路径*/
        String filePath = saveFileDir+texturl;
        System.out.println(filePath);

        /*获取照片绝对路径*/
        String filePathPhoto = saveFileDir+photourl;
        System.out.println(filePathPhoto);

        /*读取歌词*/
        String lrc = LrcSameAsSong.readFile(filePath);

        //将歌词放入request作用域中
        request.setAttribute("lrc", lrc);

        //将歌曲名放入request作用域中
        request.setAttribute("mName", mName);

        //将歌曲路径放入request作用域中
        request.setAttribute("musicurl",musicurl);

        //将歌词路径放入到request作用域中
        request.setAttribute("texturl", texturl);

        //将歌曲照片放入request作用域中
        request.setAttribute("photourl",photourl);

        //将歌手名放入到request作用域中
        request.setAttribute("getsName", getsName);

        //将专辑名放入到request作用域中
        request.setAttribute("getaName", getaName);

        return "musicLrc";
    }

}
