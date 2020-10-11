package cn.bdqn.service.impl;

import cn.bdqn.domain.Singger;
import cn.bdqn.mapper.SinggerMapper;
import cn.bdqn.service.SinggerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("singgerService")
public class SinggerServiceImpl implements SinggerService {

    @Autowired
    private SinggerMapper singgerMapper;

    /*添加歌手信息*/
    public int insertSingger(Singger record){
        return singgerMapper.insertSingger(record);
    }

    /*查询所有歌手信息*/
    public List<Singger> querySinggerList(){
        return singgerMapper.querySinggerList();
    }

    /*根据id删除指定歌手的信息*/
    public int delSinggerId(Integer id){
        return singgerMapper.delSinggerId(id);
    }

    /*根据歌手id查询歌手信息*/
    public Singger querySinggerById(Integer id){
        return singgerMapper.querySinggerById(id);
    }

    /*修改歌手信息*/
    public int updateSingger(Singger singger){
        return singgerMapper.updateSingger(singger);
    }
}
