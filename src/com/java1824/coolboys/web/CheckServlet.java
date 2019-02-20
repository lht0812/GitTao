package com.java1824.coolboys.web;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

@WebServlet(name = "CheckServlet", urlPatterns = "/check")
public class CheckServlet extends HttpServlet {


    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // 设置图片的缓存
        BufferedImage bi = new BufferedImage(60, 20, BufferedImage.TYPE_INT_RGB);

        // 绘图对象
        Graphics graphics = bi.getGraphics();
        Color color = new Color(191, 112, 158);
        // 设置图片的背景颜色
        graphics.setColor(color);
        graphics.fillRect(0, 0, 60, 20);

        // 生成随机码
        String codeArr = "0123456789ABCDEFG";

        Random random = new Random();

        StringBuffer sb = new StringBuffer();  // 存储的验证码

        for (int i = 0; i < 4; i++) {
            int index = random.nextInt(codeArr.length());
            char c = codeArr.charAt(index);
            sb.append(c);
            Color charColor = new Color(random.nextInt(255), random.nextInt(255), random.nextInt(255));
            graphics.setColor(charColor);
            graphics.drawString(c + "", i * 15 + 3, 15);
        }
        // 输出图片
        ImageIO.write(bi, "png", response.getOutputStream());

        HttpSession session = request.getSession();             // session空间中存储验证码
        session.setAttribute("check", sb.toString());


    }
}
