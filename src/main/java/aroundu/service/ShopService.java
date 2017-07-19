package aroundu.service;

import java.util.List;

import aroundu.model.Shop;

public interface ShopService {
	List<Shop> getSellerShopList();

	int insert (Shop shop);

	int update(Shop shop);

	Shop select(String s_id);

	Shop select2(int sh_id);

	List<Shop> getShopMainList();

	List<Shop> getShopMainList1(String id);
	

	
}
