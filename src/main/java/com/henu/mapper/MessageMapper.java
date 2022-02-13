package com.henu.mapper;

import com.baomidou.mybatisplus.core.mapper.BaseMapper;
import com.henu.domain.Message;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;

public interface MessageMapper extends BaseMapper<Message> {
    @Update("UPDATE `message` SET `status`='1' WHERE (`id`=?)")
    int updateMessageStatus(Integer id);

    //修改公告状态
    @Select("SELECT * FROM message where status =0")
    Message showNewMessage();
//    查看新的公告

}
