package aroundu.dao;

import aroundu.model.ShopDetail;

public interface ShopDetailDao {

	ShopDetail select(int sh_id);

	int insert(ShopDetail shopDetail);

	ShopDetail select2(int sh_id);

}
