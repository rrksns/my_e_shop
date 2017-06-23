package aroundu.controller;


import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import aroundu.model.Board;
import aroundu.service.BoardService;
import aroundu.service.PagingPgm;

@Controller
public class BoardController {
	@Autowired 
	BoardService bs;
	
	@RequestMapping("boardList")
	public String initList(){
		return "redirect:boardList?pageNum=1";
	}
	@RequestMapping("boardList?pageNum={pageNum}")
	public String boardList(@PathVariable String pageNum, Board board, Model model){
		final int ROWPERPAGE = 10;
		if(pageNum==null || pageNum.equals("")){
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum); //현재페이지 표시
		int total = bs.getTotal(board); //검색기능 - 키워드 에 일치하는 데이터 겟수 읽음
		int startRow = (currentPage-1)*ROWPERPAGE+1;
		int endRow = startRow + ROWPERPAGE-1;
		PagingPgm pp = new PagingPgm(total, ROWPERPAGE, currentPage);
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		int no = total-startRow+1;
		List<Board> list = bs.list(board);
		model.addAttribute("list",list);
		model.addAttribute("no",no);
		model.addAttribute("pp",pp);
		//검색기능
		model.addAttribute("search",board.getSearch());
		model.addAttribute("keyword",board.getKeyword());
				
		return "board/boardList";
	}
	
	@RequestMapping("bd_insertForm")
	public String initInsert(String nm,String pageNum,Model model){		
		return "redirect:insertForm?nm=null&pageNum=1";
	}
	
	@RequestMapping("insertForm?nm={nm}&pageNum={pageNum}")
	public String bd_insertForm(@PathVariable String nm,
			@PathVariable String pageNum,Model model){	
		if(nm.equals("null")) nm=null;
		int bd_num=0, ref=0, re_level=0, re_step=0;
		if(nm != null){
			bd_num = Integer.parseInt(nm);
			Board board = bs.select(bd_num);
			ref = board.getRef();
			re_level = board.getRe_level();
			re_step = board.getRe_step();
		}
		
		model.addAttribute("bd_num",bd_num);
		model.addAttribute("ref",ref);
		model.addAttribute("re_level",re_level);
		model.addAttribute("re_step",re_step);
		model.addAttribute("pageNum",pageNum);
		return "board/insertForm";
	}
	
	
	@RequestMapping("bd_insert")
	public String bd_insert(Board board,Model model, HttpServletRequest request){
		int bd_num = board.getBd_num();
		int number=bs.getMaxNum();
		if(bd_num != 0){//답변글인지 확인
			bs.updateRe(board); //조건에 맞게 Re_Step을 증가 시킴
			board.setRe_level(board.getRe_level()+1);
			board.setRe_step(board.getRe_step()+1);
			}else board.setRef(number);
		board.setBd_num(number);
		int result = bs.insert(board);
		model.addAttribute("result",result);
		return "board/bd_insert";
	}
	

}
