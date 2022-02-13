package com.henu.service;

import com.henu.domain.User;

public interface UserService {
    Boolean register(User user);

    Boolean login(String username, String password);
}
