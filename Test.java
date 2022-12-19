package com.czy.util;


public class Test {

	public static void main(String[] args) throws Exception {

		// ShoppingCartDao dao = DAOFactory.getShoppingCartServiceInstance();
		// if (dao.payGoods(14, 11, 2)) {
		// System.out.println("++++++++++++++++++++");
		// } else {
		// System.out.println("------------------");
		// }
		// if (dao.addGoods(12, 11, 1)) {
		// }
		// dao.addGoods(12, 12, 1);
		// dao.deleteGoods(2, 8, 7);

		// List<ShoppingCart> scList=dao.getAllGoods(2);
		// for(int i=0;i<scList.size();i++){
		// System.out.println(scList.get(i).getNumber());
		// }

		// System.out.println(dao.getDesignateGoodsMs(2, 8));

		/*
		 * String gname, String photo, String type, String producer, float
		 * price, float carriage, String pdate, String paddress, String
		 * described
		 */

/*		GoodsDao dao = DAOFactory.getGoodsServiceInstance();

		String gname = "算法时代";
		String photo = gname + "1.jpg&" + gname + "2.jpg";
		String type = "书籍";
		int number = 46;
		String producer = "北京大学出版社";
		float price = 38;
		float carriage = 2;
		String pdate = "2015-05-06";
		String paddress = "从浙江发货";
		String described = " 在《算法时代》一书中，作者带领读者展开了一次算法和大数据世界的探索之旅：探寻我们如何开始相信大数据的力量；向我们介绍人工智能专家、大数据科学家和硅谷的创业家们，是他们创造了这个美丽的新世界。在当下以及未来，当大数据和算法成为社会、企业和个人已经无法忽视的资产时，就会催生一些新型经济模式。毋庸置疑，算法将成为新经济的新引擎。如果你对人工智能、大数据、互联网技术和算法感兴趣，《算法时代》就非常适合你阅读。";
		Goods goods = new Goods(gname, number, photo, type, producer, price,
				carriage, pdate, paddress, described);
		dao.addGoods(goods);*/

		// System.out.println(dao.queryNumberById(9));
		// System.out.println(dao.queryNumberById(10));
		// Goods goods = new Goods("商品一", "1", "1", "1", "1", 1, 1,
		// "2011:01:01",
		// "1", "1");
		// if (dao.addGoods(goods)) {
		// System.out.println("+++++++++++++++++++++++");
		// }
		// goods = new Goods("商品二", "2", "2", "2", "2", 2, 2, "2011:01:01", "2",
		// "2");
		// dao.addGoods(goods);

		// UserDao dao = DAOFactory.getUserServiceInstance();
		// User user = new User();
		// user.setUname("陈二");
		// user.setEmail("163");
		// user.setPasswd("123456");
		// boolean hh = dao.addUser(user);
		// System.out.println("--------------------------" + hh);

		// AlreadyBuyDao dao = DAOFactory.getAlreadyBuyServiceInstance();
		// if(dao.addBuyGoods(12, 10, 4)){
		// System.out.println("true");
		// }else{
		// System.out.println("false");
		// }
		// List<AlreadyBuy> list = dao.getAllBuyGoods(12);
		// for (int i = 0; i < list.size(); i++) {
		// System.out.println(list.get(i).getBuyTime());
		// System.out.println(list.get(i).getNumber());
		// System.out.println(list.get(i).getGid());
		// }
		// AlreadyBuy buy=new AlreadyBuy();
		// buy.setUid(1);
		// buy.setGid(2);
		// buy.setNumber(2);

		// boolean flag=dao.editInfo(2,"hh","hh");
		// System.out.println("--------------"+flag);

		// boolean flag=dao.editPasswd(1, "密码");
		// boolean flag=dao.deleteUser(1);
		// System.out.println("--------------"+flag);

		// User user = dao.queryByName("回火");
		// if (user == null) {
		// System.out.println("----------------");
		// } else {
		// System.out.println(user.getEmail());
		// }

		// GoodsDao dao = DAOFactory.getGoodsServiceInstance();

		// Goods goods = new Goods("gname", "kind", "photo", "type", "producer",
		// 1, 2, "1111:11:12", "paddress", "described");
		// if (dao.addGoods(goods)) {
		// System.out.println("+++++++++++++++++++++++");
		// }

		// Goods hh=new Goods("字", "kind", "photo", "type", "producer",
		// 1, 2, "1111:11:12", "paddress", "described");
		// hh.setGid(7);
		// hh=null;
		// if(dao.editInfo(hh)){
		// System.out.println("+++++++++++++++");
		// }
		// dao.deleteGoods(9);
		// Goods goods=dao.queryById(9);
		// System.out.println(goods.getPdate());

		// Date date=new Date();
		// SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		// System.out.println(df.format(date));

	}
}
