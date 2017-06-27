package aroundu.controller; 

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aroundu.model.Menu;
import aroundu.model.Seller;
import aroundu.model.Shop;
import aroundu.service.MenuService;
import aroundu.service.ShopService;


@Controller
public class MenuController {
	@Autowired 
	MenuService ms;
	
	@Autowired
	ShopService sv;
	
	/*수동 or 자동 등록 선택 */
	@RequestMapping("menuRegist")
	public String menuRegist(HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		Shop shop = sv.select(s_id);
		int sh_id = shop.getSh_id();
		return "shop/menuRegist";
	}
	/*메뉴 정보 받기 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.GET)
	public String restuarantMenu(Menu menu, HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("s_id");
		Shop shop = sv.select(s_id);
		model.addAttribute("shop", shop);
		return "shop/restaurantMenu";
	}
	/*메뉴 정보 기입 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.POST)
	public String restuarantMenu(Shop shop, Menu menu, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		shop = sv.select(s_id);
		int sh_id = shop.getSh_id();	
		int result = ms.insert(menu);
		model.addAttribute("result", result);
		System.out.println("result=" +result);
		return "shop/restaurantMenuResult";
	}
	
	@RequestMapping("restaurantMenuResult")
	public String restaurantMenuResult() {
		return "shop/restaurantDetail";
	}
	
	@RequestMapping("restaurantDetail")
	public String restaurantDetail() {
		return "shop/restaurantDetail";
	}
}