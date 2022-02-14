package com.henu.service.impl;

import com.baomidou.mybatisplus.core.conditions.Wrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.henu.domain.Cart;
import com.henu.domain.User;
import com.henu.mapper.CartMapper;
import com.henu.service.CartService;
import org.springframework.beans.factory.annotation.Autowired;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class CartServiceImpl implements CartService {

    @Autowired
    private CartMapper cartMapper;
    @Override
    public int addItems(Cart cart) {
        return cartMapper.insert(cart);
    }

    @Override
    public int deleteItemsById(Integer id, String userName) {
        Map<String, Object> columnMap = new HashMap<String, Object>();
        columnMap.put("id", id);
        columnMap.put("userName", userName);
        return  cartMapper.deleteByMap(columnMap);
    }

    @Override
    public List<Cart> queryItems(String userName) {
        QueryWrapper<Cart> wrapper = new QueryWrapper<>();
        Map<String, Object> params = new HashMap<>();
//       设置查询条件
        params.put("userName",userName);
        wrapper.allEq(params);
        List<Cart> temp = cartMapper.selectList(wrapper);
        List<Cart> res = new ArrayList<>();
        for (Cart c: temp
             ) {

        }
        return  res ;
    }

    @Override
    public BigDecimal queryTotalPrice(String userName) {
        return null;
    }

    @Override
    public int queryTotalCunt(String userName) {
        return 0;
    }
}
