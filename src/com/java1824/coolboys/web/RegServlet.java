package com.java1824.coolboys.web;

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
import java.util.Map;

@WebServlet(name = "RegServlet",urlPatterns = "/reg")
public class RegServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        request.setCharacterEncoding("UTF-8"); // 设置请求中文编码
        Map<String, String[]> parameterMap = request.getParameterMap();
        User user = new User();
        try {
            BeanUtils.populate(user, parameterMap);

            UserService us = new UserServiceImpl();

            boolean register = us.register(user);
            System.out.println(register);

            response.setContentType("text/html;charset=UTF-8");
            if (register) { // 注册成功
                request.setAttribute(RequestConst.REQ_GOTO_LOGIN, request.getContextPath() + "/login.jsp");
                request.getRequestDispatcher("/regsuccess.jsp").forward(request, response);
            } else { // 注册失败
                response.getWriter().println("<h1>注册失败</h1>");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}

