package com.henu.service;

import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.henu.domain.Flower;

import java.util.List;

public interface FlowerService {

    List<Flower> showAllFlowers();

    int insertFlower(Flower flower);

    void delFlower(int id);

    int updateFlower(Flower flower);

    Flower queryFlowerById(int id);

    IPage<Flower> selectPage(Page page);

}
