package aroundu.dao;

import java.util.List;

import aroundu.model.Menu;

public interface MenuDao {

	int insert(Menu menu);

	Menu select(int sh_id);

	List<Menu> list();

	List<Menu> list(Menu menu);

	void delete(int it_id);

	void update(Menu menu);

	

}
