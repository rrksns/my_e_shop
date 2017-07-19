package aroundu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.ReplyBoardDao;
import aroundu.model.ReplyBoard;

@Service
public class ReplyBoardServiceImpl implements ReplyBoardService{
	@Autowired 
	private ReplyBoardDao rbd;

	@Override
	public List<ReplyBoard> list(int sh_id) {
		return rbd.list(sh_id);
	}

	@Override
	public void insert(ReplyBoard rb) {
		rbd.insert(rb);
		
	}

	@Override
	public void update(ReplyBoard rb) {
		rbd.update(rb);
		
	}

	@Override
	public void delete(int rno) {
		rbd.delete(rno);
		
	}

}
