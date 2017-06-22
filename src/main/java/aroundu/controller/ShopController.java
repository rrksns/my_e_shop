package aroundu.controller; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Shop;
import aroundu.service.ShopService;
 
@Controller
public class ShopController {
	@Autowired 
	ShopService sv;
	
	@RequestMapping("shopMain")
	public String shopMain() {
		return "shop/shopMain";
	}
	
	@RequestMapping("shopRegist")
	public String shopRegist() {
		return "shop/shopRegist";
	}
	@RequestMapping("restaurantBasic")
	public String restaurantBasic(Shop shop, Model model) {
		int result = sv.insert(shop);
		model.addAttribute("result", result);
		return "shop/restaurantBasic";
	}
	@RequestMapping("restaurantPicture")
	public String restaurantPicture(Shop shop, Model model) {
		int result = sv.update(shop);
		model.addAttribute("result", result);
		return "shop/restaurantPicture";
	}
	
	
}