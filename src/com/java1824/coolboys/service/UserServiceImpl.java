package com.java1824.coolboys.service;

import com.java1824.coolboys.cost.SessionConst;
import com.java1824.coolboys.dao.UserDAO;
import com.java1824.coolboys.dao.UserDAOImpl;
import com.java1824.coolboys.vo.User;

import javax.servlet.http.HttpServletRequest;

public class UserServiceImpl implements UserService {
    UserDAO ud = new UserDAOImpl();

    //登录
    @Override
    public boolean login(User user, HttpServletRequest request) {
        User dbuser = ud.loginUser(user);

        if (dbuser != null) { // 登录成功 将用户信息存储到 Session空间中
            request.getSession().setAttribute(SessionConst.SESS_USER, dbuser);
            return true;
        }
        return false;
    }

    //注册
    @Override
    public boolean register(User user) {
        int i = ud.add(user);
        System.out.println(i != 0);
        return i != 0;
    }

    @Override
    public void forgetPass() {

    }

    @Override
    public void updateInfo() {

    }
}
