package aroundu.service;

import java.util.List;

import aroundu.model.Grade;

public interface GradeService {

	int insert(Grade grade);

	String select(String sh_id);

	int count(int sh_id);

	List<Grade> list(int sh_id);
	List<Grade> list1(int sh_id);
	List<Grade> list2(int sh_id);

	List<Grade> vlist(String sh_id);

	

}