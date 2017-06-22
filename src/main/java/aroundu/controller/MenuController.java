package aroundu.controller; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Menu;
import aroundu.service.MenuService;


@Controller
public class MenuController {
	@Autowired 
	MenuService ms;
	
	@RequestMapping("menuRegist")
	public String menuRegist() {
		return "shop/menuRegist";
	}
	
	@RequestMapping("restuarantMenu")
	public String restuarantMenu(Menu menu, Model model) {
		int result = ms.insert(menu);
		model.addAttribute("result", result);
		return "shop/restuarantMenu";
	}
	
	@RequestMapping("restaurantDetail")
	public String restaurantDetail() {
		return "shop/restaurantDetail";
	}
}