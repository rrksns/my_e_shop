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
		return st.insert("sellerns.insert", seller);
	}

	@Override
	public Seller select(String id) {
		return st.selectOne("sellerns.select", id);
	}
	/*로그인체크*/
	@Override
	public int loginChk(String s_id, String s_pw) {
		int result=0;
		Seller seller = select(s_id);
		if(seller != null){
			String dbPass = seller.getS_pw();
			if(dbPass.equals(s_pw)) result =1; //로그인 성공
		}else result = -1; //실패
		
		return result;
	}

}
