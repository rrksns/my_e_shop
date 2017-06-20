package aroundu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import aroundu.model.Shop;
=======
import org.springframework.web.bind.annotation.RequestMapping;

>>>>>>> 634196dec9d405368076e0c7642736f0caa38d9f
import aroundu.service.ShopService;

@Controller
public class ShopController {
	@Autowired 
	ShopService ss;
	
	@RequestMapping("shopMain")
	public String shopMain() {
<<<<<<< HEAD
		return "shop/shopMain";
	}
	
	@RequestMapping("shopRegist")
	public String shopRegist() {
		return "shop/shopRegist";
	}
	@RequestMapping("restaurantBasic")
	public String restaurantBasic(Shop shop, Model model) {
		int result = ss.insert(shop);
		model.addAttribute("result", result);
		return "shop/restaurantBasic";
	}
	@RequestMapping("restaurantPicture")
	public String restaurantPicture() {
		return "shop/restaurantPicture";
	}
	
	
=======
		System.out.println("확인");

		return "shop/shopMain";
	}
>>>>>>> 634196dec9d405368076e0c7642736f0caa38d9f
}