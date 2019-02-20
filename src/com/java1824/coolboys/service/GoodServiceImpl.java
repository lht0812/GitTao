package com.java1824.coolboys.service;

import com.java1824.coolboys.dao.GoodInfoDAO;
import com.java1824.coolboys.dao.GoodInfoDAOImpl;
import com.java1824.coolboys.vo.GoodsInfo;

import java.util.List;

public class GoodServiceImpl implements GoodService {
    GoodInfoDAO gd = new GoodInfoDAOImpl();

    @Override
    public List<GoodsInfo> selectAll() {
        List<GoodsInfo> list = gd.selectAll();
        return list;
    }

    @Override
    public GoodsInfo selectByid(Integer goodsid) {
        return null;
    }

    @Override
    public Integer delete(GoodsInfo Uid) {
        return null;
    }

    @Override
    public Integer add(GoodsInfo user) {
        return null;
    }

    @Override
    public Integer update(GoodsInfo user) {
        return null;
    }
}
