package aroundu.controller;

import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Seller;
import aroundu.model.User;
import aroundu.service.UserService;


@Controller
public class UserController {
	@Autowired 
	UserService us;
	
	//일반회원가입시 약관동의
	@RequestMapping("u_joinForm")
	public String u_joinForm(){
		return "user/u_joinForm";
	}
	/*회원가입 폼*/
	@RequestMapping("u_joinForm2")
	public String u_joinForm2(){
		return "user/u_joinForm2";
	}
	/*회원가입 정보 저장*/
	@RequestMapping("userJoin")
	public String userJoin(User user, Model model,HttpSession session){
		int result =us.insert(user);
		String u_id = user.getU_id();
		session.setAttribute("id",u_id);
		model.addAttribute("result", result);		
		return "user/userJoin";
	}
	
	/*가입환영화면*/
	@RequestMapping("u_join_fin")
	public String u_join_fin(User user){			
		return "user/u_join_fin";
	}
	
	/*유저메인호출*/
	@RequestMapping("userMain")
	public String userMain(Model model, HttpSession session){
		String u_id = (String)session.getAttribute("id");
		System.out.println("유저아이디를 알고싶다!!!!!!!"+u_id);
		User user = us.select(u_id);
		model.addAttribute("user",user);
		return "userMain";
	}
	
	/*아이디 중복 체크*/
	@RequestMapping("u_idChk")
	public String idChk(String id, Model model){
		User user = us.select(id);
		if(user == null) model.addAttribute("msg","사용가능한 ID입니다");
		else model.addAttribute("msg","이미 사용중인ID입니다");
		return "user/u_idChk";
	}	
	@RequestMapping("userLoginForm")
	public String userLoginForm(){
		return "user/userLoginForm";
	}
	
	
	/*로그인체크 실행*/
	@RequestMapping("userLogin")
	public String userLogin(String u_id, String u_pw,Model model,HttpSession session){	
		int result=us.loginChk(u_id,u_pw);
		if(result>0){
			session.setAttribute("id",u_id);			
			User user = us.select(u_id);
			model.addAttribute("user",user);
			return "userMain";
		}else if(result==0){model.addAttribute("msg","암호가 일치하지 않습니다");
		}else model.addAttribute("msg","ID가 존재하지 않습니다");
		model.addAttribute("u_id",u_id);
			return "user/userLoginForm";
	}
	
	@RequestMapping("u_logout")
	public String u_logout(HttpSession session){
		session.invalidate();
		return "user/u_logout";
	}
	/*나의 정보 수정*/
	@RequestMapping("u_page")
	public String u_page(Model model, HttpSession session){
		String id = (String)session.getAttribute("id");
		User user = us.select(id);
		model.addAttribute("user",user);
		return "user/u_page";
	}
	//나의 정보 수정
	@RequestMapping("userUpdate")
	public String userUpdate(User user,Model model){
		int result = us.update(user);
		model.addAttribute("result",result);
		return "user/u_update";
	}
	

	
	
}
