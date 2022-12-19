package com.czy.service;

import java.sql.SQLException;
import java.util.List;

import com.czy.bean.Goods;
import com.czy.dao.GoodsDao;
import com.czy.db.DBConnection;
import com.czy.db.GoodsDaoImpl;

public class GoodsService implements GoodsDao {

	private DBConnection dbconn = null;

	private GoodsDao dao = null;

	public GoodsService() throws SQLException {
		this.dbconn = new DBConnection();
		this.dao = new GoodsDaoImpl(this.dbconn.getConnection());
	}

	@Override
	public boolean addGoods(Goods goods) throws Exception {
		if (goods != null) {
			return this.dao.addGoods(goods);
		}
		return false;
	}

	@Override
	public boolean editInfo(Goods goods) throws Exception {
		if (goods != null) {
			return this.dao.editInfo(goods);
		}
		return false;
	}

	@Override
	public boolean deleteGoods(int gid) throws Exception {
		if (this.dao.queryById(gid) != null & isInt(gid)) {
			return this.dao.deleteGoods(gid);
		}
		return false;
	}

	@Override
	public Goods queryById(int gid) throws Exception {
		if (isInt(gid)) {
			return this.dao.queryById(gid);
		}
		return null;
	}

	@Override
	public int queryNumberById(int gid) throws Exception {
		if (isInt(gid)) {
			return this.dao.queryNumberById(gid);
		}
		return 0;
	}

	@Override
	public List<Goods> getAllGoods() throws Exception {
		return this.dao.getAllGoods();
	}

	@Override
	public List<Goods> getLatestGoods(int gid, String type) throws Exception {
		if (isInt(gid) & type != null) {
			return this.dao.getLatestGoods(gid, type);
		}
		return null;
	}

	@Override
	public String[] queryTypes() throws Exception {
		return this.dao.queryTypes();
	}

	@Override
	public List<Goods> getTypeGoodsList(String type) throws Exception {
		if (type != null) {
			return this.dao.getTypeGoodsList(type);
		}
		return null;
	}

	public boolean isInt(int index) {
		if (index == 0) {
			return false;
		}
		String str = String.valueOf(index);
		return str.matches("[0-9]+$");
	}

}
