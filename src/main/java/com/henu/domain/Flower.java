package com.henu.domain;

import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableField;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("flower")
public class Flower {
    @TableId(value = "id", type = IdType.AUTO)
    private Integer id;
    @TableField("flower_name")
    private String flowerName;
    //   花语 简介
    @TableField("flower_language")
    private String flowerLanguage;
    private double price;
    // 花的材料
    private String material;
    //    详情页简介要用的到
    private String details;

    private String pic;
}
