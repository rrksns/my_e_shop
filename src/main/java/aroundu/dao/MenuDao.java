package aroundu.dao;

import java.util.List;

import aroundu.model.Menu;
import aroundu.model.Shop;

public interface MenuDao {

	int insert(Menu menu);

	Menu select(int sh_id);

	List<Menu> list();

	List<Menu> list(Menu menu);

	void delete(int it_id);

	void update(Menu menu);

	int selectShid(int it_id);

	void selectList(int sh_id);

	List<Menu> mlist(int sh_id);

	Menu select2(int sh_id);

	List<Shop> list(Shop shop);

	List<Menu> list2(String keyword);

	List<Menu> list11(Menu menu);
	List<Menu> list12(Menu menu);
	List<Menu> list13(Menu menu);

	

}
