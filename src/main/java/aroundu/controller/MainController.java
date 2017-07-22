package aroundu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Menu;
import aroundu.model.Shop;
import aroundu.service.MenuService;
import aroundu.service.ShopService;

@Controller
public class MainController {
	@Autowired 
	ShopService sv; 
	@Autowired 
	MenuService ms;

	 
	/*메인화면 호출*/
	@RequestMapping("main")
	public String main(Model model, HttpSession session){
			List<Shop> shopMainList = sv.getShopMainList();
			model.addAttribute("shopMainList", shopMainList);	
	return "main";
	}	
	
	@RequestMapping("sh_search")
	public String sh_search(Shop shop,Model model){
		int total=0;
		List<Shop> sh_list1=null;
		if(shop.getSearch()=="sh_name" || shop.getSearch()=="sh_con" || shop.getSearch()=="sh_hash"){
		total = sv.getTotal(shop);
		sh_list1 = sv.list(shop);		
	}
				
		
		
		model.addAttribute("sh_list1",sh_list1);
		model.addAttribute("total",total);
		
	
		
		//검색기능
		model.addAttribute("search",shop.getSearch());
		model.addAttribute("keyword",shop.getKeyword());
		
		return "sh_search";
	}
}
