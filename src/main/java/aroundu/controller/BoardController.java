package aroundu.controller;


import java.util.List;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import aroundu.model.Board;
import aroundu.service.BoardService;
import aroundu.service.PagingPgm;

@Controller
public class BoardController {
	@Autowired 
	BoardService bs;
	
/*게시판 리스트 불러옴*/
	@RequestMapping("boardList")
	public String boardList(String pageNum, Board board, Model model){
		final int ROWPERPAGE = 10;
		if(pageNum==null || pageNum.equals("")){
			pageNum="1";
		}
		int currentPage = Integer.parseInt(pageNum); //현재페이지 표시
		int total = bs.getTotal(board); //검색기능 - 키워드 에 일치하는 데이터 겟수 읽음
		int startRow = (currentPage-1)*ROWPERPAGE+1-1; //mysql index가 0번부터 시작해서 -1덧붙임
		int endRow = startRow + ROWPERPAGE-1;
		PagingPgm pp = new PagingPgm(total, ROWPERPAGE, currentPage);
		board.setStartRow(startRow);
		board.setEndRow(endRow);
		int no = total-startRow+1-1;//mysql index가 0번부터 시작해서 -1덧붙임
		List<Board> list = bs.list(board);
		model.addAttribute("list",list);
		model.addAttribute("pp",pp);
		model.addAttribute("no",no);
		//검색기능
		model.addAttribute("search",board.getSearch());
		model.addAttribute("keyword",board.getKeyword());
				
		return "board/boardList";
	}
	
	/*게시글 작성*/
	@RequestMapping("bd_insertForm")
	public String bd_insertForm( String bd_nm,String pageNum,Model model, HttpSession session){	
		int bd_num=0, ref=0, re_level=0, re_step=0;
		if(bd_nm != null){
			bd_num = Integer.parseInt(bd_nm);
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
		return "board/bd_insertForm";
	}
	
	/*게시글등록작동 및 답변글여부확인*/
	@RequestMapping("bd_insert")
	public String bd_insert(Board board,Model model, HttpSession session){
		int bd_num = board.getBd_num();
		int number=bs.getMaxNum();		
		if(bd_num != 0){//답변글인지 확인			
			bs.updateRe(board); //조건에 맞게 Re_Step을 증가 시킴
			board.setRe_level(board.getRe_level()+1);
			board.setRe_step(board.getRe_step()+1);
			}else board.setRef(number);
		board.setBd_num(number);
		board.setS_id((String)session.getAttribute("s_id"));
		int result = bs.insert(board);
		model.addAttribute("result",result);
		return "board/bd_insert";
	}
	/*게시글 상세보기*/
	@RequestMapping("bd_view")
	public String bd_view(int bd_num,String pageNum, Model model){
		bs.selectUpdate(bd_num);
		Board board = bs.select(bd_num);
		model.addAttribute("board",board);
		model.addAttribute("pageNum",pageNum);
		return "board/bd_view";
	}
	/*게시글 수정폼*/
	@RequestMapping("bd_updateForm")
	public String bd_updateForm(int bd_num, String pageNum, Model model){
		Board board =bs.select(bd_num);
		model.addAttribute("board",board);
		model.addAttribute("pageNum",pageNum);
		return "board/bd_updateForm";
	}
	/*게시글 수정*/
	@RequestMapping("bd_update")
	public String bd_update(Board board, String pageNum, Model model){
		int result = bs.update(board);
		model.addAttribute("result",result);
		model.addAttribute("pageNum",pageNum);		
		return "board/bd_update";
	}
	/*게시글 삭제폼*/
	@RequestMapping("bd_deleteForm")
	public String bd_deleteForm(int bd_num,String pageNum,Model model){
		Board board = bs.select(bd_num);
		model.addAttribute("board",board);
		model.addAttribute("pageNum",pageNum);
		return "board/bd_deleteForm";
	}
	
	/*게시글 삭제*/	
	@RequestMapping("bd_delete")
	public String bd_delete(int bd_num,String pageNum,Model model){
		/*System.out.println(bd_num);*/
		int result = bs.delete(bd_num);
		model.addAttribute("result",result);
		model.addAttribute("pageNum",pageNum);
		return "board/bd_delete";
	}
		
		
	
	

}
