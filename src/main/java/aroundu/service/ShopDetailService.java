package aroundu.service;

import aroundu.model.ShopDetail;

public interface ShopDetailService {

	ShopDetail select(int sh_id);

	int insert(ShopDetail shopDetail);


}
