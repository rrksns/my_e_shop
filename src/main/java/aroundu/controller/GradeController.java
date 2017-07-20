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
		String v_id = (String)gs.select(grade.getU_id());		 
		if(u_id == v_id || u_id.equals(v_id)){	// 입력된 아이디가 있는지 체크	
			return "shop/starNo";
		}else{			
		int result = gs.insert(grade);
		model.addAttribute("result",result);
		model.addAttribute("sh_id",grade.getSh_id());
		return "shop/starInput";}
	}
	/*평점 입력완료*/
	@RequestMapping("score1")
	public String score1(){ 
		return "shop/score1";
	}

}
