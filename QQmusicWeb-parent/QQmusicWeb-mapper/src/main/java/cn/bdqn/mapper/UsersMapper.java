package cn.bdqn.mapper;

import cn.bdqn.domain.Users;
import org.apache.ibatis.annotations.Param;

public interface UsersMapper {
    int deleteByPrimaryKey(Integer uId);

    int insert(Users record);

    int insertSelective(Users record);

    Users selectByPrimaryKey(Integer uId);

    int updateByPrimaryKeySelective(Users record);

    int updateByPrimaryKey(Users record);

    public Users selectByUsernameAndPassword(@Param("uName") String userName, @Param("uPwd") String password);
}