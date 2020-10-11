package cn.bdqn.service.impl;

import cn.bdqn.domain.Music;
import cn.bdqn.mapper.MusicMapper;
import cn.bdqn.service.MusicService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("musicService")
public class MusicServiceImpl implements MusicService {

    @Autowired
    private MusicMapper musicMapper;

    /*查询所有音乐*/
    public List<Music> queryMusicList(){
        return musicMapper.queryMusicList();
    }

    /*添加新的歌曲*/
    public int addMusic(Music music){
        return musicMapper.addMusic(music);
    }

    //String downlaodFilename = URLEncoder.encode(music.getmName(),"utf-8");
    /*根据歌曲id查询歌曲*/
    public Music queryMusicById(Integer mId){
        return musicMapper.queryMusicById(mId);
    }

    /*修改歌曲*/
    public int updateMusic(Music music){
        return musicMapper.updateMusic(music);
    }

    /*根据歌曲id删除歌曲*/
    public int delMusicById(Integer mId){
        return musicMapper.delMusicById(mId);
    }

}
