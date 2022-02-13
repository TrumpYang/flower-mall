package com.henu.controller;

import com.henu.domain.Message;
import com.henu.domain.User;
import com.henu.service.MessageService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping("/message")
public class MessageController {
    @Autowired
    private MessageService messageService;

    //配置添加公告地址
    @RequestMapping("/addMessage")
    public ModelAndView add(Message message) {
        System.out.println(message);
        messageService.addMessage(message);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("/pages/message.jsp");
        return modelAndView;
    }

    @RequestMapping("/showNew")
    @ResponseBody
    public Message showNewMessage() {
        return messageService.showNewMessage();
    }

    @RequestMapping("/messageList")
    @ResponseBody
    public List<Message> showMessages() {
        return messageService.showAllMessages();
    }

    @RequestMapping("/delMessage")
    @ResponseBody
    public String del(String id) {
        messageService.updateMessageStatus(Integer.valueOf(id));
        return "ok";
    }
}
