package aroundu.dao;

import aroundu.model.Seller;

public interface SellerDao {

	int insert(Seller seller);

	Seller select(String id);

}
