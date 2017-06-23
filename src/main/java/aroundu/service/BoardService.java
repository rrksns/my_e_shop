package aroundu.service;

import java.util.List;

import aroundu.model.Board;

public interface BoardService {

	int getMaxNum();

	void updateRe(Board board);

	int insert(Board board);

	Board select(int bd_num);

	int getTotal(Board board);

	List<Board> list(Board board);

}
