package aroundu.service;
import aroundu.model.Seller;
public interface SellerService {
	int insert(Seller seller);

	Seller select(String id);

	int loginChk(String s_id, String s_pw);

	int update(Seller seller);

}