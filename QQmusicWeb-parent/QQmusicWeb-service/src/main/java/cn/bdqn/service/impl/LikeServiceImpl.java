package cn.bdqn.service.impl;

import cn.bdqn.domain.Like;
import cn.bdqn.mapper.LikeMapper;
import cn.bdqn.service.LikeService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class LikeServiceImpl implements LikeService {

    @Autowired
    private LikeMapper likeMapper;

    /*查询是否存在此歌曲*/
    public int queryByUidMidSid(Like like) {
        return likeMapper.queryByUidMidSid(like);
    }

    /*新增like歌曲*/
    public int addLikeMusic(Like record) {
        return likeMapper.addLikeMusic(record);
    }

    /*查询所有喜欢列表*/
    public List<Like> queryLikeList(){
        return likeMapper.queryLikeList();
    }

    /*根据用户id查询所有喜欢列表*/
    public List<Like> queryByUidLikeList(Integer uId){
        return likeMapper.queryByUidLikeList(uId);
    }

}
