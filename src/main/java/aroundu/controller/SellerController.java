package aroundu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.dao.SellerDao;
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
	public String sellerJoin(Seller seller, Model model){
		int result =ss.insert(seller);
		model.addAttribute("result", result);
		return "seller/sellerJoin";
	}
	
	/*가입환영화면*/
	@RequestMapping("s_join_fin")
	public String s_join_fin(Seller seller, Model model){
		int result = ss.insert(seller);
		model.addAttribute("result", result);		
		return "seller/s_join_fin";
	}
	/*로그인페이지선택화면*/
	@RequestMapping("commonLogin")
	public String commonLogin(){
		return "commonLogin";
	}
	/*로그인 페이지*/
	@RequestMapping("sellerLoginForm")
	public String sellerLoginForm(){
		return "seller/sellerLoginForm";
	}
	/*아이디 중복 체크*/
	@RequestMapping("idChk")
	public String idChk(String id, Model model){
		Seller seller = ss.select(id);
		System.out.println("중복체크도니?");
		if(seller == null) model.addAttribute("msg","사용가능한 ID입니다");
		else model.addAttribute("msg","이미 사용중인ID입니다");
		return "seller/idChk";
	}	

	@RequestMapping("sellerJoinForm")
	public String sellerJoinForm(){
		return "seller/sellerJoinForm";
	}
	
	/*로그인실행*/
	@RequestMapping("sellerLogin")
	public String sellerLogin(){
		return "seller/sellerLogin";
	}
	/*셀러메인호출*/
	@RequestMapping("sellerMain")
	public String sellerMain(){
		return "sellerMain";
	}
}
