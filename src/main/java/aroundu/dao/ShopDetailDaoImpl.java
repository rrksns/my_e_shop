package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class ShopDetailDaoImpl implements ShopDetailDao {
	@Autowired 
	private SqlSessionTemplate st;
	
}
