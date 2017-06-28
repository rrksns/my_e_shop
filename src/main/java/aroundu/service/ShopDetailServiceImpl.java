package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.ShopDetailDao;
import aroundu.model.ShopDetail;

@Service
public class ShopDetailServiceImpl implements ShopDetailService {
	
	@Autowired
	ShopDetailDao sd;
	
	@Override
	public ShopDetail select(int sh_id) {
		// TODO Auto-generated method stub
		return sd.select(sh_id);
	}

	@Override
	public int insert(ShopDetail shopDetail) {
		// TODO Auto-generated method stub
		return sd.insert(shopDetail);
	}

}
