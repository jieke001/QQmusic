package cn.bdqn.mapper;

import cn.bdqn.domain.Lbum;

import java.util.List;

public interface LbumMapper {
    int deleteByPrimaryKey(Integer aId);

    int insert(Lbum record);

    int insertSelective(Lbum record);

    Lbum selectByPrimaryKey(Integer aId);

    int updateByPrimaryKeySelective(Lbum record);

    int updateByPrimaryKey(Lbum record);

    /*关联歌手表查询歌手名字和所有专辑*/
    List<Lbum> queryLbumList();

    /*添加新的专辑*/
    int addLbum(Lbum lbum);

    /*根据专辑id查询专辑信息*/
    Lbum queryLbumById(Integer aId);

    /*修改专辑信息*/
    int updateLbum(Lbum lbum);

    /*根据专辑id删除专辑*/
    int delLbumById(Integer aId);

}