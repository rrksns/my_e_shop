package aroundu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.MenuDao;
import aroundu.model.Menu;
import aroundu.model.Shop;
@Service
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	private MenuDao md;
	
	@Override
	public int insert(Menu menu) {
		return md.insert(menu);
	}

	@Override
	public Menu select(int sh_id) {
		// TODO Auto-generated method stub
		return md.select(sh_id);
	}

	@Override
	public List<Menu> list() {
		return md.list();
	}

	@Override
	public List<Menu> list(Menu menu) {
		return md.list(menu);
	}

	@Override
	public void delete(int it_id) {
		md.delete(it_id);  
		
	}

	@Override
	public void update(Menu menu) {
		md.update(menu);
		
	}

	@Override
	public int selectShid(int it_id) {
		return md.selectShid(it_id);
	}

	@Override
	public java.util.List<Menu> mlist(int sh_id) {
		return md.mlist(sh_id);
	}

	@Override
	public Menu select2(int sh_id) {
		return md.select2(sh_id);
	}

	@Override
	public List<Shop> list(Shop shop) {
		return md.list(shop);
	}

	



}
