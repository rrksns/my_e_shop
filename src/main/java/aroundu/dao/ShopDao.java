package aroundu.dao;

import java.util.List;

import aroundu.model.Shop;


public interface ShopDao {
	int insert (Shop shop);

	int update(Shop shop);

	Shop select(String s_id);

	Shop select2(int sh_id);

	List<Shop> getShopMainList();

	List<Shop> getShopMainList1(String id);

	List<Shop> getSellerShopList(String s_id);

	List<Shop> list(Shop shop);

	int getTotal(Shop shop);

	List<Shop> list2(Shop shop);

	
}
