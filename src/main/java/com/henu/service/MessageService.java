package com.henu.service;

import com.henu.domain.Message;

import java.util.List;

public interface MessageService {

    int addMessage(Message message);

    int updateMessageStatus(Integer id);
    //修改公告状态

    List<Message> showAllMessages();

    Message showNewMessage();
}
