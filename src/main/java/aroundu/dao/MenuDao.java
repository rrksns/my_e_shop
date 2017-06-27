package aroundu.dao;

import aroundu.model.Menu;

public interface MenuDao {

	int insert(Menu menu);

	Menu select(int sh_id);

}
