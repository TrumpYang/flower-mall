package com.henu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.henu.domain.Flower;
import org.apache.ibatis.annotations.Select;

import java.util.List;

public interface FlowerMapper extends BaseMapper<Flower> {
//    mybatis-plus 动态增强


//    模糊根据名字搜索
@Select("SELECT * FROM flower where flower_name like %?%")
    List<Flower> searchFlowerByName (String name);


}
