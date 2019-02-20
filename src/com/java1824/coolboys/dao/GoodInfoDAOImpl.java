package com.java1824.coolboys.dao;

import com.java1824.coolboys.utils.SQLUtils;
import com.java1824.coolboys.vo.GoodsInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class GoodInfoDAOImpl implements GoodInfoDAO {

    ResultSet rs = null;
    PreparedStatement pstm = null;
    Connection conn;

    {
        try {
            conn = SQLUtils.getConnect();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<GoodsInfo> selectAll() {
        List<GoodsInfo> list = new ArrayList<GoodsInfo>();
        String sql = "SELECT * FROM GoodsInfo";
        try {
            pstm = conn.prepareStatement(sql);
            rs = pstm.executeQuery();
            while(rs.next()){
                GoodsInfo good = new GoodsInfo();
                good.setGoodsid(rs.getInt("goodsid"));
                good.setGoodsname(rs.getString("goodsname"));
                good.setGoodsprice(rs.getFloat("goodsprice"));
                good.setGoodssum(rs.getString("goodssum"));
                good.setAuthor(rs.getString("author"));
                good.setPress(rs.getString("press"));
                good.setTimemarket(rs.getString("timemarket"));
                list.add(good);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return list;
    }

    @Override
    public GoodsInfo selectByid(Integer goodsid) {
        GoodsInfo good = null;
        String sql = "select * from GoodsInfo  where goodsid=?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setInt(1,goodsid);
            rs = pstm.executeQuery();
            while(rs.next()){
                good = new GoodsInfo();
                good.setGoodsid(rs.getInt("goodsid"));
                good.setGoodsname(rs.getString("goodsname"));
                good.setGoodsprice(rs.getFloat("goodsprice"));
                good.setGoodssum(rs.getString("goodssum"));
                good.setAuthor(rs.getString("author"));
                good.setPress(rs.getString("press"));
                good.setTimemarket(rs.getString("timemarket"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return good;
    }

    @Override
    public Integer delete(GoodsInfo Uid) {
        int i = 0;
        String sql = "delete GoodsInfo where id="+Uid;
        try {
            pstm = conn.prepareStatement(sql);
            i = pstm.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return i;
    }

    @Override
    public Integer add(GoodsInfo user) {
        int i = 0;
        String sql = "insert into books values(?,?,?,?,?,?,?)";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, user.getGoodsname());
            pstm.setFloat(2, user.getGoodsprice());
            pstm.setString(3, user.getGoodssum());
            pstm.setString(4, user.getAuthor());
            pstm.setString(5, user.getPress());
            pstm.setString(6, user.getTimemarket());
            i = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return i;
    }

    @Override
    public Integer update(GoodsInfo user){
        int i =0;
        String sql = "update GoodsInfo set goodsname=?,goodsprice=?,goodssum=?,author=?,press=?,timemarket=?, where goodsid=?";
        try {
            pstm = conn.prepareStatement(sql);
            pstm.setString(1, user.getGoodsname());
            pstm.setFloat(2, user.getGoodsprice());
            pstm.setString(3, user.getGoodssum());
            pstm.setString(4, user.getAuthor());
            pstm.setString(5, user.getPress());
            pstm.setString(6, user.getTimemarket());
            i = pstm.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }finally {
            close();
        }
        return i;
    }

    public void close(){
        try {
            if(conn != null){
                conn.close();
            }
            if(pstm != null){
                pstm.close();
            }
            if(rs != null){
                rs.close();
            }
        } catch (SQLException e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
