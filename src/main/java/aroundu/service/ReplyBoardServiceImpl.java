package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.ReplyBoardDao;

@Service
public class ReplyBoardServiceImpl implements ReplyBoardService{
	@Autowired 
	private ReplyBoardDao rbd;

}
