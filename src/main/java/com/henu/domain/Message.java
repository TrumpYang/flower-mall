package com.henu.domain;
//公告类


import com.baomidou.mybatisplus.annotation.IdType;
import com.baomidou.mybatisplus.annotation.TableId;
import com.baomidou.mybatisplus.annotation.TableName;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@TableName("message")
public class Message {
    @TableId(value = "id", type = IdType.AUTO)
    Integer id;
    String title;
    String context;
    int status;  // 0 代表未读  1 代表已经读了
}
