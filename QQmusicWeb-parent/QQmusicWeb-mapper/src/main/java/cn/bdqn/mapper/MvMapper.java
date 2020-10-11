package cn.bdqn.mapper;

import cn.bdqn.domain.Mv;

public interface MvMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Mv record);

    int insertSelective(Mv record);

    Mv selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Mv record);

    int updateByPrimaryKey(Mv record);
}