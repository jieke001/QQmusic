package cn.bdqn.mapper;

import cn.bdqn.domain.Musiclist;

public interface MusiclistMapper {
    int deleteByPrimaryKey(Integer mId);

    int insert(Musiclist record);

    int insertSelective(Musiclist record);

    Musiclist selectByPrimaryKey(Integer mId);

    int updateByPrimaryKeySelective(Musiclist record);

    int updateByPrimaryKey(Musiclist record);
}