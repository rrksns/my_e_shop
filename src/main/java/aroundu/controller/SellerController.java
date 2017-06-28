package aroundu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;


import aroundu.model.Seller;
import aroundu.service.SellerService;


@Controller
public class SellerController {
	@Autowired 
	SellerService ss;
	

	
	/*메인화면 호출*/
	@RequestMapping("main")
	public String main(){
	return "main";
	}	

	/*일반회원가입  or 샵등록 선택*/
	@RequestMapping("s_Join")
	public String s_Join(){
	return "seller/s_Join";
	}
	
	/*정보 동의 약관*/
	@RequestMapping("s_joinForm")
	public String s_joinForm(){
		return "seller/s_joinForm";
	}
	/*회원가입 폼*/
	@RequestMapping("s_joinForm2")
	public String s_joinForm2(){
		return "seller/s_joinForm2";
	}
	/*회원가입 정보 저장*/
	@RequestMapping("sellerJoin")
	public String sellerJoin(Seller seller, Model model,HttpSession session){
		int result =ss.insert(seller);
		String s_id = seller.getS_id();
		session.setAttribute("s_id",s_id);
		model.addAttribute("result", result);		
		return "seller/sellerJoin";
	}
	
	/*가입환영화면*/
	@RequestMapping("s_join_fin")
	public String s_join_fin(Seller seller){	
		
		return "seller/s_join_fin";
	}
	/*로그인페이지선택화면*/

	@RequestMapping("commonLogin")
	public String commonLogin(){
		return "commonLogin";
	}

	/*아이디 중복 체크*/
	@RequestMapping("idChk")
	public String idChk(String id, Model model){
		Seller seller = ss.select(id);
		if(seller == null) model.addAttribute("msg","사용가능한 ID입니다");
		else model.addAttribute("msg","이미 사용중인ID입니다");
		return "seller/idChk";
	}	
	/*회원가입*/
	@RequestMapping("sellerJoinForm")
	public String sellerJoinForm(){
		return "seller/sellerJoinForm";
	}
	
	/*로그인 페이지*/
	@RequestMapping("sellerLoginForm")
	public String sellerLoginForm(){
		return "seller/sellerLoginForm";
	}
	/*로그인체크 실행*/
	@RequestMapping("sellerLogin")
	public String sellerLogin(String s_id, String s_pw,Model model,HttpSession session){	
		int result=ss.loginChk(s_id,s_pw);
		if(result>0){
			session.setAttribute("s_id",s_id);
			return "sellerMain";
		}else if(result==0){model.addAttribute("msg","암호가 일치하지 않습니다");
		}else model.addAttribute("msg","ID가 존재하지 않습니다");
		model.addAttribute("s_id",s_id);
		return "seller/sellerLoginForm";
	}

	/*셀러메인호출*/
	@RequestMapping("sellerMain")
	public String sellerMain(){
		return "sellerMain";
	}
	/*로그아웃*/
	@RequestMapping("s_logout")
	public String s_logout(HttpSession session){
		session.invalidate();
		return "seller/s_logout";
	}
	
	/*나의 정보 수정*/
	@RequestMapping("s_page")
	public String s_page(Model model, HttpSession session){
		String s_id = (String)session.getAttribute("s_id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller",seller);
		return "seller/s_page";
	}
	//나의 정보 수정
	@RequestMapping("sellerUpdate")
	public String sellerUpdate(Seller seller,Model model){
		int result = ss.update(seller);
		model.addAttribute("result",result);
		return "seller/s_update";
	}
	
}
