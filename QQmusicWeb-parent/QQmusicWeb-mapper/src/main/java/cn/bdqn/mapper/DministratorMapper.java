package cn.bdqn.mapper;

import cn.bdqn.domain.Dministrator;
import org.springframework.stereotype.Repository;

/*管理员实体类*/
@Repository
public interface DministratorMapper {
    int deleteByPrimaryKey(Integer id);

    int insert(Dministrator record);

    int insertSelective(Dministrator record);

    Dministrator selectByPrimaryKey(Integer id);

    int updateByPrimaryKeySelective(Dministrator record);

    int updateByPrimaryKey(Dministrator record);

    /*管理员登录*/
    Dministrator queryAdminLogin(Dministrator dministrator);

}