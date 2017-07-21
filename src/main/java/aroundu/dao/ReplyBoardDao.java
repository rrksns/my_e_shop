package aroundu.dao;

import java.util.List;

import aroundu.model.ReplyBoard;

public interface ReplyBoardDao {

	List<ReplyBoard> list(int sh_id);

	void insert(ReplyBoard rb);

	void update(ReplyBoard rb);

	void delete(int rno);

	int select(int rno);

}
