package cn.bdqn.mapper;

import cn.bdqn.domain.Viptype;

public interface ViptypeMapper {
    int deleteByPrimaryKey(Integer vId);

    int insert(Viptype record);

    int insertSelective(Viptype record);

    Viptype selectByPrimaryKey(Integer vId);

    int updateByPrimaryKeySelective(Viptype record);

    int updateByPrimaryKey(Viptype record);
}