package aroundu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.Board;

@Repository
public class BoardDaoImpl implements BoardDao{
	
	@Autowired 
	private SqlSessionTemplate sst;

	@Override
	public int getMaxNum() {
		return sst.selectOne("boardns.getMaxNum");
	}

	@Override
	public void updateRe(Board board) {
		sst.update("boardns.updateRe",board);
		
	}

	@Override
	public int insert(Board board) {
		return sst.insert("boardns.insert",board);
	}

	@Override
	public Board select(int bd_num) {
		return sst.selectOne("boardns.select",bd_num);
	}

	@Override
	public int getTotal(Board board) {
		return sst.selectOne("boardns.getTotal",board);
	}

	@Override
	public List<Board> list(Board board) {
		return sst.selectList("boardns.list",board);
	}

	@Override
	public void selectUpdate(int bd_num) {
		sst.update("boardns.selectUpdate",bd_num);
		
	}

	@Override
	public int update(Board board) {
		return sst.update("boardns.update",board);
	}

	@Override
	public int delete(int bd_num) {
		return sst.update("boardns.delete",bd_num);
	}

}
