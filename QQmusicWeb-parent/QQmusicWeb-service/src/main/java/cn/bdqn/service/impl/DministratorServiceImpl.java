package cn.bdqn.service.impl;

import cn.bdqn.domain.Dministrator;
import cn.bdqn.mapper.DministratorMapper;
import cn.bdqn.service.DministratorService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service("usersService")
public class DministratorServiceImpl implements DministratorService {

    @Autowired
    private DministratorMapper dministratorMapper;

    /*管理员登录*/
    @Override
    public Dministrator queryAdminLogin(Dministrator dministrator) {
        return dministratorMapper.queryAdminLogin(dministrator);
    }

}
