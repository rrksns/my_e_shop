package aroundu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Shop;
import aroundu.service.ShopService;

@Controller
public class MainController {
	@Autowired 
	ShopService sv; 

	
	/*메인화면 호출*/
	@RequestMapping("main")
	public String main(Model model, HttpSession session){
			List<Shop> shopMainList = sv.getShopMainList();
			model.addAttribute("shopMainList", shopMainList);	
	return "main";
	}	
}
