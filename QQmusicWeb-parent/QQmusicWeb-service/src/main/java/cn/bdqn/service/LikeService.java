package cn.bdqn.service;

import cn.bdqn.domain.Like;

import java.util.List;

public interface LikeService {

    /*查询是否存在此歌曲*/
    int queryByUidMidSid(Like like);

    /*新增like歌曲*/
    int addLikeMusic(Like record);

    /*查询所有喜欢列表*/
    List<Like> queryLikeList();

    /*根据用户id查询所有喜欢列表*/
    List<Like> queryByUidLikeList(Integer uId);

}
