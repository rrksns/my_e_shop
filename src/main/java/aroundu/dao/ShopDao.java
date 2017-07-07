package aroundu.dao;

import java.util.List;

import aroundu.model.Shop;


public interface ShopDao {
	int insert (Shop shop);

	int update(Shop shop);

	Shop select(String s_id);

	Shop select(int sh_id);

	List<Shop> getShopMainList();
}
