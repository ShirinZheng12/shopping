package com.czy.dao;

import java.util.List;

import com.czy.bean.Goods;

public interface GoodsDao {

	// 添加商品
	public boolean addGoods(Goods goods) throws Exception;

	// 返回指定类型的最近添加的四件商品
	public List<Goods> getLatestGoods(int gid, String type) throws Exception;

	// 返回所有商品
	public List<Goods> getAllGoods() throws Exception;

	// 编辑商品信息
	public boolean editInfo(Goods goods) throws Exception;

	// 删除商品
	public boolean deleteGoods(int gid) throws Exception;

	// 查找指定id的商品
	public Goods queryById(int gid) throws Exception;

	// 查询指定id的商品的数量
	public int queryNumberById(int gid) throws Exception;

	// 返回所有商品的类型
	public String[] queryTypes() throws Exception;

	// 返回指定类型的所有商品
	public List<Goods> getTypeGoodsList(String type) throws Exception;
}
