package aroundu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import aroundu.service.ReplyBoardService;
import aroundu.model.ReplyBoard;

@Controller
public class ReplyBoardController {
	@Autowired 
	ReplyBoardService rbs;
	
	@RequestMapping("reply_score")
	public String reply_score(ReplyBoard rb,HttpSession session, Model model){
		String replyer = (String)session.getAttribute("id");		
		rb.setReplyer(replyer);
		model.addAttribute("rb",rb);
		return "replyBoard/reply_score";
	}
	@RequestMapping("slist")
	public String slist(Model model){
		List<ReplyBoard> slist = rbs.list();
		model.addAttribute("slist", slist);
		return "slist";
	}
	@RequestMapping("sInsert")
	public String sInsert(ReplyBoard rb, Model model) {
		rbs.insert(rb);
		return "redirect:slist";
	}
	
	

		
	
	

}
