package com.czy.service;

import java.sql.SQLException;
import java.util.List;

import com.czy.bean.AlreadyBuy;
import com.czy.dao.AlreadyBuyDao;
import com.czy.db.AlreadyBuyDaoImpl;
import com.czy.db.DBConnection;

public class AlreadyBuyService implements AlreadyBuyDao {

	private DBConnection dbconn = null;

	private AlreadyBuyDao dao = null;

	public AlreadyBuyService() throws SQLException {
		this.dbconn = new DBConnection();
		this.dao = new AlreadyBuyDaoImpl(this.dbconn.getConnection());
	}

	@Override
	public boolean addBuyGoods(int uid, int gid, int number) throws Exception {
		if (isInt(uid) && isInt(gid) && isInt(number)) {
			return this.dao.addBuyGoods(uid, gid, number);
		}
		return false;
	}

	@Override
	public List<AlreadyBuy> getAllBuyGoods(int uid) throws Exception {
		if (isInt(uid)) {
			return this.dao.getAllBuyGoods(uid);
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
