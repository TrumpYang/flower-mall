package com.henu.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("cart")
public class Cart {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("user_name")
    private String userName;
    @TableField("product_name")
    private String productName;
    private int number;
    private double price;
    @TableField(exist = false)
//    用户添加的商品 一项总价格
    private double singleTotal;
    @TableField(exist = false)
    private BigDecimal totalPrice;
    @TableField(exist = false)
    private int count;
//   用户添加的购物车所有数量

    private String pic ;


//    图片地址


}
