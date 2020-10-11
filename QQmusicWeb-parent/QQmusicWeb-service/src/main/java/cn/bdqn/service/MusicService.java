package cn.bdqn.service;

import cn.bdqn.domain.Music;

import java.util.List;

public interface MusicService {

    /*查询所有音乐*/
    List<Music> queryMusicList();

    /*添加新的歌曲*/
    int addMusic(Music music);

    /*根据歌曲id查询歌曲*/
    Music queryMusicById(Integer mId);

    /*修改歌曲*/
    int updateMusic(Music music);

    /*根据歌曲id删除歌曲*/
    int delMusicById(Integer mId);
}
