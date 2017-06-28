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
	
	/*샵 메인실행*/
	@RequestMapping("shopMain")
	public String shopMain(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("s_id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		return "shop/shopMain";
	}
	/*샵 템플릿 선택*/
	@RequestMapping("shopRegist")
	public String shopRegist(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("s_id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		return "shop/shopRegist";
	}
	/*샵 기본정보 받기 */
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.GET)
	public String restaurantBasic(Model model, HttpSession session) {
		//int result = sv.insert(shop);
		// model.addAttribute("result", result);
		String s_id = (String)session.getAttribute("s_id");
		Shop shop =  sv.select(s_id);
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		model.addAttribute("shop", shop);
		return "shop/restaurantBasic";
	}
	/*샵 기본정보 등록 */
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.POST)
	public String restaurantBasic(Shop shop, Model model,HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		shop.setS_id(s_id);
		if (shop.getDineIn() ==null) shop.setDineIn("n");
		if (shop.getTakeOut() ==null) shop.setTakeOut("n");
		if (shop.getDelivery() ==null) shop.setDelivery("n");
		if (shop.getAllday_open() ==null) shop.setAllday_open("n");
		int result = sv.insert(shop);
		model.addAttribute("result", result);		
		return "shop/restaurantPicture";
	}
	/*샵 사진 등록 */
	@RequestMapping("restaurantPicture")
	public String restaurantPicture(Shop shop, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id");
		shop = sv.select(s_id);
		int sh_id = shop.getSh_id();		
		int result = sv.update(shop);
		model.addAttribute("result", result);
		return "shop/restaurantPicture";
	}
	
}