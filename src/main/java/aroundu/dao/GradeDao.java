package aroundu.dao;

import aroundu.model.Grade;

public interface GradeDao {

	int insert(Grade grade);

	String select(String u_id);

}
