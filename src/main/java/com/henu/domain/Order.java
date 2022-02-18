package com.henu.domain;

import com.baomidou.mybatisplus.annotation.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.math.BigDecimal;
import java.util.Date;
@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("orders")
public class Order {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField(value = "user_name" )
    private String userName;
    private String address;
    @TableField(value = "create_time" ,fill = FieldFill.INSERT)
    private Date createTime;
    private BigDecimal price;
    private int status;
}
