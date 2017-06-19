package aroundu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.service.ShopService;

@Controller
public class ShopController {
	@Autowired 
	ShopService ss;
	
	@RequestMapping("shopMain")
	public String shopMain() {
		System.out.println("확인");

		return "shop/shopMain";
	}
}