package com.henu.service.impl;

import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.henu.domain.User;
import com.henu.mapper.UserMapper;
import com.henu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.Map;

@Service("userService")

//怎么注入呢？
public class UserServiceImpl implements UserService {

    @Autowired
    private UserMapper userMapper;

    //注册业务
    public Boolean register(User user) {
        //查询用户名是否存在 如果存在不能注册
        QueryWrapper<User> wrapper = new QueryWrapper<>();
        Map<String, Object> params = new HashMap<>();
//       设置查询条件
        params.put("username", user.getUserName());
        wrapper.allEq(params);
        if (userMapper.selectOne(wrapper) != null) {
            //说明拿到了User对象 查询成功 用户名存在 不能注册
            return false;
        } else {
            //注册成功
            userMapper.insert(user);
            return true;
        }

    }

    //用户登录业务
    public Boolean login(String username, String password) {

        //查询用户是否合法

        QueryWrapper<User> wrapper = new QueryWrapper<>();
        Map<String, Object> params = new HashMap<>();
//       设置查询条件
        params.put("username", username);
        params.put("password", password);

        wrapper.allEq(params);
        if (userMapper.selectOne(wrapper) != null) {
            //说明拿到了User对象 查询成功
            return true;
        } else return false;
    }

}
