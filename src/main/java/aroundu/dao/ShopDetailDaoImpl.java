package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.ShopDetail;

@Repository
public class ShopDetailDaoImpl implements ShopDetailDao {
	@Autowired 
	private SqlSessionTemplate st;

	@Override
	public ShopDetail select(int sh_id) {
		// TODO Auto-generated method stub
		return st.selectOne("ShopDetailns.select", sh_id);
	}

	@Override
	public int insert(ShopDetail shopDetail) {
		// TODO Auto-generated method stub
		return st.insert("shopDetailns.insert", shopDetail);
	}
	
}
