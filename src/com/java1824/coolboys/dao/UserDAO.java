package com.java1824.coolboys.dao;

import com.java1824.coolboys.vo.User;

import java.util.List;

public interface UserDAO {

    List<User> selectAll();

    Integer delete(User Uid);

    int add(User user);

    Integer update(User user);

    User loginUser(User user);

}
