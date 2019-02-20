package com.java1824.coolboys.service;

import com.java1824.coolboys.vo.User;

import javax.servlet.http.HttpServletRequest;

public interface UserService {

    // 登录
    boolean login(User user, HttpServletRequest request);

    // 用户注册
    boolean register(User user);

    // 忘记密码
    void forgetPass();

    // 更新用户信息
    void updateInfo();


}
