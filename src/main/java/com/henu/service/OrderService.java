package com.henu.service;

import com.henu.domain.Order;

import java.util.ArrayList;
import java.util.List;

public interface OrderService {
    int addOrder(Order order);
    List<Order> showOrders();
    int updateOrder(Order order);
}
