package com.henu.service;

import com.henu.domain.Cart;

import java.math.BigDecimal;
import java.util.List;

public interface CartService {
    int addItems(Cart cart);
    int deleteItemsById(Integer id,String userName);
    List<Cart> queryItems(String userName);
    BigDecimal queryTotalPrice(String userName);
    int queryTotalCunt(String userName);
}
