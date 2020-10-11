package cn.bdqn.service;

import cn.bdqn.domain.Singger;

import java.util.List;

public interface SinggerService {

    /*添加歌手信息*/
    int insertSingger(Singger record);

    /*查询所有歌手信息*/
    List<Singger> querySinggerList();

    /*根据id删除指定歌手的信息*/
    int delSinggerId(Integer id);

    /*根据歌手id查询歌手信息*/
    Singger querySinggerById(Integer id);

    /*修改歌手信息*/
    int updateSingger(Singger singger);
}
