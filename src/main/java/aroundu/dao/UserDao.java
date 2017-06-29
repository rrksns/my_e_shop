package aroundu.dao;

import aroundu.model.User;

public interface UserDao {

	int insert(User user);
/*
	int insert(Seller seller);

	Seller select(String id);

	int loginChk(String s_id, String s_pw);

	*/

	User select(String id);

	int loginChk(String u_id, String u_pw);

	int update(User user);

}
