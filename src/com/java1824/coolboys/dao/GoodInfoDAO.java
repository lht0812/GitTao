package com.java1824.coolboys.dao;

import com.java1824.coolboys.vo.GoodsInfo;

import java.util.List;

public interface GoodInfoDAO {

    List<GoodsInfo> selectAll();

    GoodsInfo selectByid(Integer goodsid);

    Integer delete(GoodsInfo Uid);

    Integer add(GoodsInfo user);

    Integer update(GoodsInfo user);
}
