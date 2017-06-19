package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.SellerDao;
import aroundu.model.Seller;

@Service
public class SellerServiceImpl implements SellerService{
	@Autowired
	private SellerDao sd;
	public int insert(Seller seller) {
		// TODO Auto-generated method stub
		return sd.insert(seller);
	}

}
