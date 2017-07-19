package aroundu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Grade;
import aroundu.service.GradeService;

@Controller
public class GradeController {
	@Autowired
	GradeService gs;
	
	@RequestMapping("starInput")
	public String starInput(Grade grade, Model model, HttpSession session){
		String u_id = (String)session.getAttribute("id");
		grade.setU_id(u_id);		
		int result = gs.insert(grade);
		model.addAttribute("result",result);
		return "shop/starInput";
	}

}
