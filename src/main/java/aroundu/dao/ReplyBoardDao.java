package aroundu.dao;

import java.util.List;

import aroundu.model.ReplyBoard;

public interface ReplyBoardDao {

	List<ReplyBoard> list();

	void insert(ReplyBoard rb);

	void update(ReplyBoard rb);

	void delete(int rno);

}
