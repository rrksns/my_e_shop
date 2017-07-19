package aroundu.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import aroundu.model.Grade;

@Repository
public class GradeDaoImpl implements GradeDao{
	@Autowired 
	private SqlSessionTemplate gst;

	@Override
	public int insert(Grade grade) {
		return gst.insert("Gradens.insert",grade);
	}

	@Override
	public String select(String u_id) {
		return gst.selectOne("Gradens.select", u_id);
	}

}
