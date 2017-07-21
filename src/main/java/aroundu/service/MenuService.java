package aroundu.service;

import java.util.List;

import aroundu.model.Menu;
import aroundu.model.Shop;

public interface MenuService {

	int insert(Menu menu);


	Menu select(int sh_id);


	List<Menu> list();


	List<Menu> list(Menu menu);


	void delete(int it_id);


	void update(Menu menu);


	int selectShid(int it_id);
	
	
	List<Menu> mlist(int sh_id);


	Menu select2(int sh_id);


	List<Shop> list(Shop shop);

}
