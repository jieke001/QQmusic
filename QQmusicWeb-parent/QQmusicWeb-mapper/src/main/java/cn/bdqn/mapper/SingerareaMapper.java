package cn.bdqn.mapper;

import cn.bdqn.domain.Singerarea;

public interface SingerareaMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Singerarea record);

    int insertSelective(Singerarea record);

    Singerarea selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Singerarea record);

    int updateByPrimaryKey(Singerarea record);
}