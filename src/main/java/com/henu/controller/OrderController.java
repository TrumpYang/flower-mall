package com.henu.controller;

import com.henu.domain.Order;
import com.henu.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;
import java.util.List;

@Controller
@RequestMapping("/order")
public class OrderController {
    @Autowired
    private OrderService service;

    @RequestMapping("/addOrder")
    @ResponseBody
    public String addOrder(Order order){
        order.setCreateTime(new Date());
        System.out.println(order);
        if(service.addOrder(order)==1) return "success";
        else return "error";
    }

    @RequestMapping("/orderList")

    @ResponseBody
    public List<Order> showOrders(){

        return service.showOrders();
    }
}
