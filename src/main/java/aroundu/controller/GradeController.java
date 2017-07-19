package aroundu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import aroundu.service.GradeService;

@Controller
public class GradeController {
	@Autowired
	GradeService gs;

}
