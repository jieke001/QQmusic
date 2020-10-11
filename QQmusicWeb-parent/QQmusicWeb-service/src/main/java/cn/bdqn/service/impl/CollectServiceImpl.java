package cn.bdqn.service.impl;

import cn.bdqn.domain.Collect;
import cn.bdqn.mapper.CollectMapper;
import cn.bdqn.service.CollectService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CollectServiceImpl implements CollectService {

    @Autowired
    private CollectMapper collectMapper;

        /*查询是否存在此歌曲*/
    public int queryByUidMidSid(Collect collect){
        return collectMapper.queryByUidMidSid(collect);
    }

    /*新增收藏*/
    public int addByCollect(Collect collect){
        return collectMapper.addByCollect(collect);
    }

    /*查询用户下所有收藏*/
    public List<Collect> queryCollectList(Integer uId){
        return collectMapper.queryCollectList(uId);
    }

}
