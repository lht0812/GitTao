package com.java1824.coolboys.dao;

import com.java1824.coolboys.utils.SQLUtils;
import com.java1824.coolboys.vo.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAOImpl implements UserDAO {
    Connection conn = null;
    ResultSet rs = null;
    PreparedStatement pstm = null;


    @Override
    public List<User> selectAll() {
        List<User> list = new ArrayList<User>();

        try {
            conn = SQLUtils.getConnect();
            String sql = "SELECT * FROM UserInfo";
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            while (rs.next()) {
                User user = new User();
                user.setUid(rs.getInt("Uid"));
                user.setUname(rs.getString("Uname"));
                user.setUpass(rs.getString("Upass"));
                user.setUserName(rs.getString("UserName"));
                user.setUsex(rs.getString("Usex"));
                user.setUage(rs.getInt("Uage"));
                user.setUtel(rs.getString("Utel"));
                user.setUaddress(rs.getString("Uaddress"));
                list.add(user);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public User loginUser(User user) {
        User dbUser = null;
        try {
            conn = SQLUtils.getConnect();
            String sql = "select * from UserInfo  where Uname = ? and Upass = ?";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1,user.getUname());
            pstm.setString(2, user.getUpass());
            rs = pstm.executeQuery();
            if (rs.next()) {
                dbUser = new User();
                dbUser.setUid(rs.getInt("uid"));
                dbUser.setUname(rs.getString("uname"));
                dbUser.setUpass(rs.getString("upass"));
                dbUser.setUserName(rs.getString("userName"));
                dbUser.setUsex(rs.getString("usex"));
                dbUser.setUage(rs.getInt("uage"));
                dbUser.setUtel(rs.getString("utel"));
                dbUser.setUaddress(rs.getString("uaddress"));

            }
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return dbUser;
    }

    @Override
    public Integer delete(User Uid) {
        int i = 0;
        try {
            conn = SQLUtils.getConnect();
            String sql = "delete from userinfo where id=?";
            pstm = conn.prepareStatement(sql);
            i = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return i;
    }

    @Override
    public int add(User user) {

        try {
            conn = SQLUtils.getConnect();
            String sql = "insert into UserInfo(Uid,Uname,Upass,UserName,Usex,Uage,Utel,Uaddress) values(default,?,?,?,?,?,?,?)";
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, user.getUname());
            pstm.setString(2, user.getUpass());
            pstm.setString(3, user.getUserName());
            pstm.setString(4, user.getUsex());
            pstm.setInt(5, user.getUage());
            pstm.setString(6, user.getUtel());
            pstm.setString(7, user.getUaddress());
            int i = pstm.executeUpdate();
            System.out.println(i);
            return i;
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return 0;
    }

    @Override
    public Integer update(User user) {
        int i = 0;
        try {
            conn = SQLUtils.getConnect();
            String sql = "update UserInfo set Uname=?,Upass=?,UserName=?,Usex=?,Uage=?,Utel=?,Uaddress=?, where id=?";
            conn.prepareStatement(sql);
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, user.getUname());
            pstm.setString(2, user.getUpass());
            pstm.setString(3, user.getUserName());
            pstm.setString(4, user.getUsex());
            pstm.setInt(5, user.getUage());
            pstm.setString(6, user.getUtel());
            pstm.setString(7, user.getUaddress());
            pstm.setInt(8, user.getUid());
            i = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            close();
        }
        return i;
    }


    public void close() {
        try {
            if (conn != null) {
                conn.close();
            }
            if (pstm != null) {
                pstm.close();
            }
            if (rs != null) {
                rs.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
