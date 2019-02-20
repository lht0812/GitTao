package com.java1824.coolboys.test;


import java.sql.*;

//   协议          主机      端口  数据库
//  主协议 子协议
//  jdbc:mysql://localhost:3306/study

//  协议     主机         端口
//  http://www.baidu.com:80/path/


public class SQLDemo {

    public static void main(String[] args) {

        try {
            // 加载驱动
            //  DriverManager.registerDriver(new Driver());  // 驱动会加载两次
            Class.forName("com.mysql.cj.jdbc.Driver"); // 驱动只会加载一次

            // 获得连接
             Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/commodity?serverTimezone=UTC", "root", "123456");
//            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/commodity", "root", "123456");

            // 创建操作数据库对象
            Statement statement = connection.createStatement();
            //  ResultSet executeQuery(String sql)  执行查询语句

            //  int executeUpdate(String sql) 执行 INSERT、UPDATE 或 DELETE

            // boolean execute(String sql)

            String sql = "SELECT * FROM userinfo";
            // 得到查询的结果集
            ResultSet resultSet = statement.executeQuery(sql);

            // getXxx  获取数据的方法

            // updateXxx 更新数据

            // absolute(int row)  定位到某一行数据
            // afterLast()
            // beforeFirst()

            // 打印结果集
            while (resultSet.next()) {
                int id = resultSet.getInt("Uid");
                String name = resultSet.getString("Uname");
                String pass = resultSet.getString("Upass");
                String uname = resultSet.getString("UserName");
                String sex = resultSet.getString("Usex");
                int age = resultSet.getInt("Uage");
                String tel = resultSet.getString("Utel");
                String add = resultSet.getString("Uaddress");
                System.out.println("id=" + id + "|name=" + name + "|pass" + pass + "|uname" + uname + "|sex" + sex + "|age" + age + "|tel" + tel + "|add" + add);
            }

            // 释放资源
            resultSet.close();

            statement.close();

            connection.close();

        } catch (SQLException e) {
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        }


    }


}
