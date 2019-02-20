package com.java1824.coolboys.web;

import com.java1824.coolboys.service.GoodService;
import com.java1824.coolboys.service.GoodServiceImpl;
import com.java1824.coolboys.vo.GoodsInfo;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
import java.util.List;

@WebServlet(name = "GoodsServlet" ,urlPatterns = "/index")
public class GoodsServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        doGet(request,response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        GoodService gs = new GoodServiceImpl();

        List<GoodsInfo> list = gs.selectAll();
        HttpSession session = request.getSession();
        session.setAttribute("list",list);
//        for (GoodsInfo goodsInfo : list) {
//            System.out.println("开始");
//            System.out.println(goodsInfo.getGoodsname());
//        }
        response.sendRedirect(request.getContextPath()+"/index.jsp");
    }
}
