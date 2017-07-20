package aroundu.dao;

import java.util.List;

import aroundu.model.Grade;

public interface GradeDao {

	int insert(Grade grade);

	String select(String u_id);

	int count(int sh_id);

	List<Grade> list(int sh_id);

}
