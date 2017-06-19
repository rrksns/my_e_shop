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
	
	@RequestMapping("main")
	public String main(){
	return "main";
	}
	
	@RequestMapping("sellerLoginForm")
	public String sellerLoginForm(){
		return "seller/sellerLoginForm";
	}
	@RequestMapping("sellerJoinForm")
	public String sellerJoinForm(){
		return "seller/sellerJoinForm";
	}
	@RequestMapping("sellerJoin")
	public String sellerJoin(Seller seller, Model model){
		int result = ss.insert(seller);
		model.addAttribute("result", result);
		return "seller/sellerJoin";
	}
	@RequestMapping("sellerLogin")
	public String sellerLogin(){
		return "seller/sellerLogin";
	}
}
