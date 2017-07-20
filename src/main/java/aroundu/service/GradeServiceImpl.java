package aroundu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.GradeDao;
import aroundu.model.Grade;

@Service
public class GradeServiceImpl implements GradeService{
	@Autowired 
	private GradeDao gd;

	@Override
	public int insert(Grade grade) {
		return gd.insert(grade);
	}

	@Override
	public String select(String u_id) {
		return gd.select(u_id);
	}

	@Override
	public int count(int sh_id) {
		return gd.count(sh_id);
	}

	@Override
	public List<Grade> list(int sh_id) {
		return gd.list(sh_id);
	}

}
