package com.henu.service.impl;

import com.henu.domain.Message;
import com.henu.mapper.FlowerMapper;
import com.henu.mapper.MessageMapper;
import com.henu.service.MessageService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

@Service("messageService")
public class MessageServiceImpl implements MessageService {
    @Resource(name = "messageMapper")
    private MessageMapper messageMapper;

    @Override
    public int addMessage(Message message) {
        return messageMapper.insert(message);
    }

    @Override
    public int updateMessageStatus(Integer id) {
        return messageMapper.updateMessageStatus(id);
    }

    @Override
    public List<Message> showAllMessages() {
        return messageMapper.selectList(null);
    }

    @Override
    public Message showNewMessage() {
        return messageMapper.showNewMessage();
    }
}
