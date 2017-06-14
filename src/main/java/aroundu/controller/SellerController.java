package aroundu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.dao.SellerDao;
import aroundu.service.SellerService;

@Controller
public class SellerController {
	@Autowired 
	SellerService ss;
	
	@RequestMapping("main")
	public String main(){
		System.out.println("작동?");
	return "main";
	}

}
