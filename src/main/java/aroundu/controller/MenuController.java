package aroundu.controller; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	
	@RequestMapping(value="restaurantMenu", method = RequestMethod.GET)
	public String restuarantMenu(Menu menu, Model model) {
//		int result = ms.insert(menu);
//		model.addAttribute("result", result);
		return "shop/restaurantMenu";
	}
	@RequestMapping(value="restaurantMenu", method = RequestMethod.POST)
	public String restuarantMenu(Menu menu, Model model, HttpSession session) {

		int result = ms.insert(menu);
		model.addAttribute("result", result);
		System.out.println("result=" +result);
		return "shop/restaurantMenuResult";
	}
	
	@RequestMapping("restaurantDetail")
	public String restaurantDetail() {
		return "shop/restaurantDetail";
	}
}