package cn.bdqn.service.impl;

import cn.bdqn.domain.Lbum;
import cn.bdqn.mapper.LbumMapper;
import cn.bdqn.service.LbumService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("lbumService")
public class LbumServiceImpl implements LbumService {

    @Autowired
    private LbumMapper lbumMapper;

    /*关联歌手表查询歌手名字和所有专辑*/
    public List<Lbum> queryLbumList() {
        return lbumMapper.queryLbumList();
    }

    /*添加新的专辑*/
    public int addLbum(Lbum lbum){
        return lbumMapper.addLbum(lbum);
    }

    /*根据专辑id查询专辑信息*/
    public Lbum queryLbumById(Integer aId){
        return lbumMapper.queryLbumById(aId);
    }

    /*修改专辑信息*/
    public int updateLbum(Lbum lbum){
        return lbumMapper.updateLbum(lbum);
    }

    /*根据专辑id删除专辑*/
    public int delLbumById(Integer aId){
        return lbumMapper.delLbumById(aId);
    }

}
