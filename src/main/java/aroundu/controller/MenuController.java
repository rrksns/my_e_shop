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
import aroundu.service.SellerService;
import aroundu.service.ShopService;


@Controller
public class MenuController {
	@Autowired 
	MenuService ms;
	
	@Autowired
	ShopService sv;
	
	
	
	/*수동 or 자동 등록 선택 */
	@RequestMapping("menuRegist")
	public String menuRegist(Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id"); //세션 가져오기
		Shop shop = sv.select(s_id); // s_id로 샵정보 가져오기		
		model.addAttribute("shop", shop); // 가져온 샵에 정보 기입하기
		return "shop/menuRegist";
	}
	/*메뉴 정보 및 샵 아이디 받기 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.GET)
	public String restuarantMenu(Menu menu, HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("s_id");
		Shop shop = sv.select(s_id);
		int sh_id = shop.getSh_id();
		model.addAttribute("sh_id", sh_id);		
		return "shop/restaurantMenu";
	}
	/*메뉴 정보 및 샵 아이디 기입 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.POST)
	public String restuarantMenu(int sh_id, Menu menu, Model model) {
		menu.setSh_id(sh_id);
		int result = ms.insert(menu);
		model.addAttribute("result", result);
		model.addAttribute("sh_id", sh_id);
		return "shop/restaurantMenuResult";
	}
	
	@RequestMapping("restaurantMenuResult")
	public String restaurantMenuResult(int sh_id, Model model) {
		model.addAttribute("sh_id", sh_id);
		return "shop/restaurantDetail";
	}
	
}