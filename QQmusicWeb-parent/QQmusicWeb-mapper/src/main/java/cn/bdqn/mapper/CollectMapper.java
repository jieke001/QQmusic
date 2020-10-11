package cn.bdqn.mapper;

import cn.bdqn.domain.Collect;

import java.util.List;

public interface CollectMapper {
    int deleteByPrimaryKey(Integer cId);

    int insert(Collect record);

    int insertSelective(Collect record);

    Collect selectByPrimaryKey(Integer cId);

    int updateByPrimaryKeySelective(Collect record);

    int updateByPrimaryKey(Collect record);

    /*查询是否存在此歌曲*/
    int queryByUidMidSid(Collect collect);

    /*新增收藏*/
    int addByCollect(Collect collect);

    /*查询用户下所有收藏*/
    List<Collect> queryCollectList(Integer uId);

}