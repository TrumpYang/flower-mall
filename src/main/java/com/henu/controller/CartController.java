package com.henu.controller;

import com.henu.domain.Cart;
import com.henu.domain.Flower;
import com.henu.service.CartService;
import com.henu.service.FlowerService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.List;

@SessionAttributes(value={"cart"},types={Cart.class})
@Controller
//   管理员简单的增删改查
@RequestMapping("/cart")
public class CartController {
    @Autowired
//    某一个用户的具体清单
    private CartService cartService;
    @Autowired
    private FlowerService flowerService;
    @RequestMapping("/list")
    @ResponseBody
    public List<Cart> cartList (String userName){
        List<Cart> temp = cartService.queryItems(userName);
        int count = cartService.queryTotalCunt(userName);
        BigDecimal totalPrice=cartService.queryTotalPrice(userName);
        for (Cart c :
                temp) {
            if(c!=null){
                c.setSingleTotal(c.getPrice()*c.getNumber());
                c.setCount(count);
                c.setTotalPrice(totalPrice);
            }
        }
        return  temp;
    }
//    当用户下单时  购物车的内容会删除 然后转到 订单处理
//    同时下单怎么办？？？
    @RequestMapping("/deleteItem")
    @ResponseBody
    public String deleteItem(Integer id ,String userName){
       if(cartService.deleteItemsById(id, userName)==1) {
           return "success";
       }
       else{
           return "error";
       }
    }
    @RequestMapping("/addCart")
    @ResponseBody
    public String addCart(String userName, Integer id, int number){
        Flower f = flowerService.queryFlowerById(Integer.valueOf(id));
        Cart cart = new Cart();
        cart.setId(null);
        cart.setCount(0);
        cart.setSingleTotal(0);
        cart.setNumber(number);
        cart.setPic(f.getPic());
        cart.setPrice(f.getPrice());
        cart.setProductName(f.getFlowerName());
        cart.setUserName(userName);
        System.out.println("原始cart："+cart);
        int res=cartService.addItems(cart);
        if(res==1) return "success";
        else return "error";
    }




    @RequestMapping("/updateItem")
    @ResponseBody
    public String updateItem(int number,String userName,int id){
        if (cartService.updateItem(number, userName, id)==1) return "success";
        else return "error";
    }






}
