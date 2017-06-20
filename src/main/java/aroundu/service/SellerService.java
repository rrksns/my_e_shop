package aroundu.service;
import aroundu.model.Seller;
public interface SellerService {
	int insert(Seller seller);

	Seller select(String id);

}