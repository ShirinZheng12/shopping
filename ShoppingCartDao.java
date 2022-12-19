package com.czy.dao;

import java.util.List;

import com.czy.bean.ShoppingCart;

public interface ShoppingCartDao {

	// 为指定id用户添加购物车内商品
	public boolean addGoods(int uid, int gid, int number) throws Exception;

	// 为指定id用户删除购物车内商品
	public boolean deleteGoods(int uid, int gid, int number) throws Exception;

	// 为指定id用户查询购物车所有商品
	public List<ShoppingCart> getAllGoods(int uid) throws Exception;

	// 为指定id用户查询指定商品的数量
	public String getDesignateGoodsMs(int uid, int gid) throws Exception;

	// 为指定id用户支付商品
	public boolean payGoods(int uid, int gid, int number) throws Exception;

	// 位指定id用户支付所有商品
	public boolean payAllGoods(int uid) throws Exception;

}
