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
	public String slist(HttpSession session,Model model){
		String r_id = (String)session.getAttribute("id");
		List<ReplyBoard> slist = rbs.list();
		model.addAttribute("slist", slist);
		model.addAttribute("r_id",r_id);
		return "replyBoard/slist";
	}
	@RequestMapping("sInsert")
	public String sInsert(ReplyBoard rb,HttpSession session, Model model) {		
		rbs.insert(rb);
		String r_id = (String)session.getAttribute("id");
		List<ReplyBoard> slist = rbs.list();
		model.addAttribute("slist", slist);	
		model.addAttribute("r_id",r_id);
		return "replyBoard/slist";
	}
	@RequestMapping("repUpdate")
	public String repUpdate(ReplyBoard rb,HttpSession session, Model model){
		rbs.update(rb); //업데이트 함 
		String r_id = (String)session.getAttribute("id");
		List<ReplyBoard> slist = rbs.list();
		model.addAttribute("slist", slist);
		model.addAttribute("r_id",r_id);	
		return "replyBoard/slist";
	}
	
	@RequestMapping("repDelete")
	public String repDelete(ReplyBoard rb,HttpSession session, Model model){
		rbs.delete(rb.getRno()); 
		String r_id = (String)session.getAttribute("id");
		List<ReplyBoard> slist = rbs.list();
		model.addAttribute("slist", slist);
		model.addAttribute("r_id",r_id);
		return "replyBoard/slist";
	}
	@RequestMapping("score")
	public String score(){
		return "replyBoard/score";
	}
	@RequestMapping("input_score")
	public String in_score(){
		return "replyBoard/in_score";
	}
	
	

		
	
	

}
