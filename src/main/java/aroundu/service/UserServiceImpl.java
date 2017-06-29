package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import aroundu.dao.UserDao;
import aroundu.model.User;


@Service
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao ud;
	/*public int insert(Seller seller) {
		return sd.insert(seller);
	}
	@Override
	public Seller select(String id) {
		return sd.select(id);
	}
	@Override
	public int loginChk(String s_id, String s_pw) {
		return sd.loginChk(s_id,s_pw);
	}
	@Override
	public int update(Seller seller) {
		
	}
*/

	@Override
	public int insert(User user) {
		return ud.insert(user);
	}

	@Override
	public User select(String id) {
		return ud.select(id);
	}

	@Override
	public int loginChk(String u_id, String u_pw) {
		return ud.loginChk(u_id,u_pw);
	}

	@Override
	public int update(User user) {
		return ud.update(user);
		
	}
}
