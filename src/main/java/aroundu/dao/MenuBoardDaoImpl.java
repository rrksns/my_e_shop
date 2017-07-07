package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.MenuBoard;

@Repository
public class MenuBoardDaoImpl implements MenuBoardDao {
	@Autowired 
	private SqlSessionTemplate mst;

	@Override
	public void insertGroup(MenuBoard menuBoard) {
		mst.insert("mbns.insertGroup",menuBoard);
		
	}
}
