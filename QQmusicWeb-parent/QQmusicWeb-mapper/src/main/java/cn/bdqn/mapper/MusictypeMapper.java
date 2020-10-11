package cn.bdqn.mapper;

import cn.bdqn.domain.Musictype;

public interface MusictypeMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Musictype record);

    int insertSelective(Musictype record);

    Musictype selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Musictype record);

    int updateByPrimaryKey(Musictype record);
}