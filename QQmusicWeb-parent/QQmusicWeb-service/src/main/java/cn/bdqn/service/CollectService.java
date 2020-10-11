package cn.bdqn.service;

import cn.bdqn.domain.Collect;

import java.util.List;

public interface CollectService {

    /*查询是否存在此歌曲*/
    int queryByUidMidSid(Collect collect);

    /*新增收藏*/
    int addByCollect(Collect collect);

    /*查询用户下所有收藏*/
    List<Collect> queryCollectList(Integer uId);

}
