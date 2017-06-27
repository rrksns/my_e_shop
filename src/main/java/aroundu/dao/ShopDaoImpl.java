package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.Shop;

@Repository
public class ShopDaoImpl implements ShopDao{
	@Autowired 
	private SqlSessionTemplate st;
	
	@Override
	public int insert(Shop shop) {
		// TODO Auto-generated method stub
		System.out.println("확인중"+shop.getS_id());
		System.out.println("확인중"+shop.getSh_addr());

		return st.insert("Shopns.insert", shop);
	}

	@Override
	public int update(Shop shop) {
		// TODO Auto-generated method stub
		return st.update("Shopns.update",shop);
	}

	@Override
	public Shop select(String s_id) {
		// TODO Auto-generated method stub
		return st.selectOne("Shopns.select", s_id);
	}

	@Override
	public Shop select(int sh_id) {
		// TODO Auto-generated method stub
		return st.selectOne("Shopns.select", sh_id);
	}
	

}
