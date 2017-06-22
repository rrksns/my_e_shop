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
		return st.insert("Shopns.insert", shop);
	}

}
