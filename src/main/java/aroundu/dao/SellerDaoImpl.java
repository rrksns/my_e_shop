package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.Seller;

@Repository
public class SellerDaoImpl implements SellerDao {
	@Autowired 
	private SqlSessionTemplate st;

	@Override
	public int insert(Seller seller) {
		// TODO Auto-generated method stub
		return st.insert("Sellerns.insert", seller);
	}

}
