package com.henu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.henu.domain.Flower;
import com.henu.mapper.FlowerMapper;
import com.henu.service.FlowerService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("flowerService")


public class FlowerServiceImpl implements FlowerService {


    @Resource(name = "flowerMapper")
    private FlowerMapper flowerMapper;


    @Override
    public List<Flower> showAllFlowers() {
        return flowerMapper.selectList(null);
    }

    @Override
    public int insertFlower(Flower flower) {
        return flowerMapper.insert(flower);
    }

    @Override
    public void delFlower(int id) {
        flowerMapper.deleteById(id);
    }

    @Override
    public int updateFlower(Flower flower) {
        return flowerMapper.updateById(flower);
    }

    @Override
    public Flower queryFlowerById(int id) {
        return flowerMapper.selectById(id);
    }

    @Override
    public IPage<Flower> selectPage(Page page) {
        return flowerMapper.selectPage(page, null);
    }

    @Override
    public IPage<Flower> searchFlowerByName(Page page,String name) {

        QueryWrapper<Flower> queryWrapper = new QueryWrapper<Flower>().like("flower_name",name);
        return flowerMapper.selectPage(page,queryWrapper);
    }


}
