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
		return sd.insert(seller);
	}
	@Override
	public Seller select(String id) {
		return sd.select(id);
	}
	@Override
	public int loginChk(String s_id, String s_pw) {
		return sd.loginChk(s_id,s_pw);
	}
	@Override
	public int update(Seller seller) {
		return sd.update(seller);
	}

}
