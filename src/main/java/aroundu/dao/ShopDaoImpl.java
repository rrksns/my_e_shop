package aroundu.dao;

import java.util.List;

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
		
		return st.insert("Shopns.insert", shop);
	}

	@Override
	public int update(Shop shop) {
		// TODO Auto-generated method stub
		return st.update("Shopns.update",shop);
	}

	@Override
	public Shop select(String s_id) {
		return st.selectOne("Shopns.select1", s_id);
	}

	@Override
	public Shop select2(int sh_id) {
		// TODO Auto-generated method stub
		return st.selectOne("Shopns.select2", sh_id);
	}

	@Override
	public List<Shop> getShopMainList() {
		// TODO Auto-generated method stub
		return st.selectList("Shopns.getShopMainList");
	}

	@Override
	public List<Shop> getShopMainList1(String id) {
		return st.selectList("Shopns.getShopMainList",id);
	}

	@Override
	public List<Shop> getSellerShopList(String s_id) {
		// TODO Auto-generated method stub
		return st.selectList("Shopns.getSellerShopList",s_id);
	}

	@Override
	public List<Shop> list(Shop shop) {
		return st.selectList("Shopns.list",shop);
	}

	@Override
	public int getTotal(Shop shop) {
		return st.selectOne("Shopns.getTotal",shop);
	}

	@Override
	public List<Shop> list2(Shop shop) {
		return st.selectList("Shopns.list2",shop);
	}

	
}
