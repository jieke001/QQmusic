package cn.bdqn.service;

import cn.bdqn.domain.Users;

public interface UsersService {

    /*用户注册*/
    void insert(Users users);

    /*用户登录*/
    Users selectByUsernameAndPassword(Users users);
}
