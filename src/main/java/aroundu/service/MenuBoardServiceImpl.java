package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.MenuBoardDao;
import aroundu.model.MenuBoard;


@Service
public class MenuBoardServiceImpl implements MenuBoardService{
	@Autowired
	private MenuBoardDao mbd;

	@Override
	public void insertGroup(MenuBoard menuBoard) {
		mbd.insertGroup(menuBoard);
		
	}

	
}
