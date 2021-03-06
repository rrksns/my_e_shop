package aroundu.dao;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.ReplyBoard;

@Repository
public class ReplyBoardDaoImpl implements ReplyBoardDao{
	@Autowired 
	private SqlSessionTemplate rst;

	@Override
	public List<ReplyBoard> list(int sh_id) {
		return rst.selectList("rbns.list", sh_id);
	}

	@Override
	public void insert(ReplyBoard rb) {
		rst.insert("rbns.insert",rb);
		
	}

	@Override
	public void update(ReplyBoard rb) {
		rst.update("rbns.update",rb);
		
	}

	@Override
	public void delete(int rno) {
		rst.delete("rbns.delete",rno);
		
	}

	@Override
	public int select(int rno) {
		return rst.selectOne("rbns.select",rno);
	}

}
