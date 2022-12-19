package com.czy.dao;

import java.util.List;

import com.czy.bean.AlreadyBuy;

public interface AlreadyBuyDao {

	// 向购物车添加商品
	public boolean addBuyGoods(int uid, int gid, int number) throws Exception;

	// 获取指定用户的购物车内的所有商品
	public List<AlreadyBuy> getAllBuyGoods(int uid) throws Exception;

}
