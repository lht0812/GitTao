package com.java1824.coolboys.test;

import com.java1824.coolboys.dao.UserDAO;
import com.java1824.coolboys.dao.UserDAOImpl;
import com.java1824.coolboys.vo.User;

import java.util.List;

public class SQLtest {

        static UserDAO ud = new UserDAOImpl();

    public static void main(String[] args) {

        System.out.println("表信息如下");
        showSelectAll(ud.selectAll());

//            User user = new User();
////            user.setUname("ddd");
////            user.setUpass("123456");
////            user.setUserName("张三");
////            user.setUsex("男");
////            user.setUage(18);
////            user.setUtel("13567899087");
////            user.setUaddress("湖南长沙");
////            ud.add(user);
    }


    private  static void  showSelectAll(List<User> allUser) {

        System.out.println("------------------");
        for(User user:allUser)   {
            System.out.println("id=" + user.getUid() + "|name=" + user.getUname() + "|pwd=" + user.getUpass() +
                    "|username=" + user.getUserName() + "|sex=" + user.getUsex() + "|age=" + user.getUage() +
                    "|tel=" + user.getUtel() + "|add=" + user.getUaddress());
        }
    }
//


}
