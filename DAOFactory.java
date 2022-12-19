package com.czy.factory;

import com.czy.dao.AlreadyBuyDao;
import com.czy.dao.GoodsDao;
import com.czy.dao.ShoppingCartDao;
import com.czy.dao.UserDao;
import com.czy.service.AlreadyBuyService;
import com.czy.service.GoodsService;
import com.czy.service.ShoppingCartService;
import com.czy.service.UserService;

public class DAOFactory {

	public static UserDao getUserServiceInstance() throws Exception {
		return new UserService();
	}

	public static GoodsDao getGoodsServiceInstance() throws Exception {
		return new GoodsService();
	}

	public static ShoppingCartDao getShoppingCartServiceInstance()
			throws Exception {
		return new ShoppingCartService();
	}

	public static AlreadyBuyDao getAlreadyBuyServiceInstance() throws Exception {
		return new AlreadyBuyService();
	}
}
