package aroundu.service;

import aroundu.model.User;

public interface UserService {

	int insert(User user);

	User select(String id);

	int loginChk(String u_id, String u_pw);

	int update(User user);
	
	/*

	Seller select(String id);

	int loginChk(String s_id, String s_pw);

	int update(Seller seller);*/

}