package aroundu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.BoardDao;
import aroundu.model.Board;

@Service
public class BoardServiceImpl implements BoardService{
	@Autowired
	private BoardDao bd;

	@Override
	public int getMaxNum() {
		return bd.getMaxNum();
	}

	@Override
	public void updateRe(Board board) {
		bd.updateRe(board);
		
	}

	@Override
	public int insert(Board board) {		
		return bd.insert(board);
	}

	@Override
	public Board select(int bd_num) {
		return bd.select(bd_num);
	}

	@Override
	public int getTotal(Board board) {
		return bd.getTotal(board);
	}

	@Override
	public List<Board> list(Board board) {
		return bd.list(board);
	}

	@Override
	public void selectUpdate(int bd_num) {
		bd.selectUpdate(bd_num);
		
	}

	@Override
	public int update(Board board) {
		return bd.update(board);
	}

	@Override
	public int delete(int bd_num) {
		return bd.delete(bd_num);
	}
	

}
