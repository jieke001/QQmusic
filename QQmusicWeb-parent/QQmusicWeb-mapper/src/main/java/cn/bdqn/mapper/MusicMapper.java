package cn.bdqn.mapper;

import cn.bdqn.domain.Music;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface MusicMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(Music record);

    int insertSelective(Music record);

    Music selectByPrimaryKey(Integer mId);

    int updateByPrimaryKeySelective(Music record);

    int updateByPrimaryKey(Music record);

    /*查询所有歌曲*/
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