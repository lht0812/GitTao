package com.java1824.coolboys.web;

import com.java1824.coolboys.cost.MessageConst;
import com.java1824.coolboys.cost.RequestConst;
import com.java1824.coolboys.service.UserService;
import com.java1824.coolboys.service.UserServiceImpl;
import com.java1824.coolboys.vo.User;
import org.apache.commons.beanutils.BeanUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.lang.reflect.InvocationTargetException;
import java.util.Map;

@WebServlet(name = "LoginServlet",urlPatterns = "/login")
public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        Map<String,String[]> usermap = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user,usermap);
            System.out.println(user.getUname()+"\t"+user.getUpass());
            UserService us = new UserServiceImpl();
            boolean success = us.login(user, request);

            if (success) {
                request.getRequestDispatcher("/loginsuccess.jsp").forward(request, response);
            } else {
                request.setAttribute(RequestConst.REQ_LOGIN_ERROR, MessageConst.MSG_PLS_RIGHT_USER);
                request.getRequestDispatcher("/loginerror.jsp").forward(request, response);
            }

        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (InvocationTargetException e) {
            e.printStackTrace();
        }




    }
}

