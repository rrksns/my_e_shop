package aroundu.service;

import java.util.List;

import aroundu.model.ReplyBoard;

public interface ReplyBoardService {

	List<ReplyBoard> list();

	void insert(ReplyBoard rb);

	void update(ReplyBoard rb);

	void delete(int rno);

}
