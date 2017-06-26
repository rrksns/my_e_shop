package aroundu.controller; 

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aroundu.model.Seller;
import aroundu.model.Shop;
import aroundu.service.SellerService;
import aroundu.service.ShopService;
 
@Controller
public class ShopController {
	@Autowired 
	ShopService sv;
	@Autowired 
	SellerService ss;
	
	@RequestMapping("shopMain")
	public String shopMain(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("s_id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		return "shop/shopMain";
	}
	
	@RequestMapping("shopRegist")
	public String shopRegist() {
		return "shop/shopRegist";
	}
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.GET)
	public String restaurantBasicForm(Model model) {
		//int result = sv.insert(shop);
		// model.addAttribute("result", result);
		Shop shop =  sv.select();
		model.addAttribute("shop", shop);
		return "shop/restaurantBasic";
	}
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.POST)
	public String restaurantBasic(Shop shop, Model model,HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		shop.setS_id(s_id);
		int result = sv.insert(shop);
		model.addAttribute("result", result);

		return "shop/restaurantPicture";
	}
	@RequestMapping("restaurantPicture")
	public String restaurantPicture(Shop shop, Model model) {
		int result = sv.update(shop);
		model.addAttribute("result", result);
		return "shop/restaurantPicture";
	}
	
}