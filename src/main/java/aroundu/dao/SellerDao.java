package aroundu.dao;

import aroundu.model.Seller;

public interface SellerDao {

	int insert(Seller seller);

	Seller select(String id);

	int loginChk(String s_id, String s_pw);

	int update(Seller seller);

}
