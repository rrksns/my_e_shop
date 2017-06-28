package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.Menu;

@Repository
public class MenuDaoImpl implements MenuDao{
	
	@Autowired 
	private SqlSessionTemplate st;
	
	@Override
	public int insert(Menu menu) {
		return st.insert("Menuns.insert",menu);
	}

	@Override
	public Menu select(int sh_id) {
		// TODO Auto-generated method stub
		return st.selectOne("Menuns.select", sh_id);
	}

}
