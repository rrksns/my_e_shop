package aroundu.service;

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

}
