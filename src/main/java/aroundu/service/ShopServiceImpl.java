package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import aroundu.dao.ShopDao;
import aroundu.model.Shop;

@Service
public class ShopServiceImpl implements ShopService{
	
	@Autowired
	private ShopDao sd;
	public int insert(Shop shop) {
		// TODO Auto-generated method stub
		return sd.insert(shop);
	}
	@Override
	public int update(Shop shop) {
		// TODO Auto-generated method stub
		return sd.update(shop);
	}
	@Override
	public Shop select(String s_id) {
		// TODO Auto-generated method stub
		return sd.select(s_id);
	}
	@Override
	public Shop select(int sh_id) {
		// TODO Auto-generated method stub
		return sd.select(sh_id);
	}

}
