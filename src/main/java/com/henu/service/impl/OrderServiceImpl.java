package com.henu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.henu.domain.Order;
import com.henu.mapper.OrderMapper;
import com.henu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;
@Service("orderService")
public class OrderServiceImpl implements OrderService {

   @Autowired
   private OrderMapper orderMapper;

    @Override
    public int addOrder(Order order) {
        return orderMapper.insert(order);
    }

    @Override
    public List<Order> showOrders() {
        return orderMapper.selectList(null);
    }

    @Override
    public int updateOrder(Order order) {
        return 0;
    }
}
