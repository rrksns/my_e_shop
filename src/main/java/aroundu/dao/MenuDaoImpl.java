package aroundu.dao;

import java.util.List;

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
		return st.selectOne("Menuns.select", sh_id);
	}

	/*메뉴 리스트 불러오기*/
	@Override
	public List<Menu> list() {
		return st.selectList("Menuns.list");
	}

	@Override
	public List<Menu> list(Menu menu) {
		return st.selectList("Menuns.list",menu);
	}

	@Override
	public void delete(int it_id) {
		st.delete("Menuns.delete",it_id);
	}

	@Override
	public void update(Menu menu) {
		st.update("Menuns.update",menu);
		
	}

	@Override
	public int selectShid(int it_id) {
		System.out.println("it_id = "+it_id);
		return st.selectOne("Menuns.selectShid",it_id);
	}

	@Override
	public void selectList(int sh_id) {
		st.selectList("Menuns.selectList",sh_id);
		
	}

	@Override
	public List<Menu> mlist(int sh_id) {
		return st.selectList("Menuns.mlist",sh_id);
	}

	@Override
	public Menu select2(int sh_id) {
		return st.selectOne("Menuns.select2",sh_id);
	}

}
