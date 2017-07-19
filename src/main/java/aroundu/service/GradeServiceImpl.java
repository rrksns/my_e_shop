package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroundu.dao.GradeDao;

@Service
public class GradeServiceImpl implements GradeService{
	@Autowired 
	private GradeDao gd;

}
