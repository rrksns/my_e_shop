package aroundu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.service.ReplyBoardService;

@Controller
public class ReplyBoardController {
	@Autowired 
	ReplyBoardService rbs;
	
	@RequestMapping("reply_score")
	public String reply_score(HttpSession session, Model model){
		String id = (String)session.getId();
		model.addAttribute("id",id);
		return "replyBoard/reply_score";
	}
	

		
	
	

}
