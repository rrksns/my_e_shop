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
		
		return sd.insert(shop);
	}

}
