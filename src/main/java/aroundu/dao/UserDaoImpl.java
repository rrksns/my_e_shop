package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.User;


@Repository
public class UserDaoImpl implements UserDao {
	@Autowired 
	private SqlSessionTemplate ust;

	@Override
	public int insert(User user) {
		return ust.insert("userns.insert",user);
	}

	@Override
	public User select(String id) {
		return ust.selectOne("userns.select", id);
	}

	@Override
	public int loginChk(String u_id, String u_pw) {
		int result=0;
		User user = select(u_id);
		if(user != null){
			String dbPass = user.getU_pw();
			if(dbPass.equals(u_pw)) result =1; //로그인 성공
		}else result = -1; //실패
		
		return result;		
	}

	@Override
	public int update(User user) {
		return ust.update("userns.update",user);
	}

	/*@Override
	public int insert(Seller seller) {
		return st.insert("sellerns.insert", seller);
	}

	
	로그인체크
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

	@Override
	public int update(Seller seller) {
		return st.update("sellerns.update",seller);
	}*/

}
