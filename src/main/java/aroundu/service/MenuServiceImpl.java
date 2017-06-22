package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.MenuDao;
import aroundu.model.Menu;
@Service
public class MenuServiceImpl implements MenuService{
	
	@Autowired
	private MenuDao md;
	
	@Override
	public int insert(Menu menu) {
		// TODO Auto-generated method stub
		return md.insert(menu);
	}

}
