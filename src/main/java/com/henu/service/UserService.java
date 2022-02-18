package com.henu.service;

import com.henu.domain.User;

public interface UserService {
    Boolean register(User user);
    int editUser(User user);
    Boolean login(String username, String password);
    User queryUserByName(String userName);
}
