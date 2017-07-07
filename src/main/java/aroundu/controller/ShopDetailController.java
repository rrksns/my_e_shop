package aroundu.controller;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aroundu.model.Menu;
import aroundu.model.Seller;
import aroundu.model.Shop;
import aroundu.model.ShopDetail;
import aroundu.service.MenuService;
import aroundu.service.SellerService;
import aroundu.service.ShopDetailService;
import aroundu.service.ShopService;

@Controller
public class ShopDetailController {

	@Autowired 
	ShopService sv;
	
	@Autowired
	ShopDetailService sd;
	
	@Autowired
	SellerService ss;
	
	@Autowired 
	MenuService ms;
	
	/*부가정보 및 샵아이디받기 */
	@RequestMapping(value= "restaurantDetail", method = RequestMethod.GET)
	public String restaurantDetail(ShopDetail shopDetail, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		Shop shop = sv.select(s_id); 
		int sh_id = shop.getSh_id(); 
		model.addAttribute("sh_id", sh_id);	
		model.addAttribute("shop", shop);
		return "shop/restaurantDetail";	
		
	}
	/*부가정보 및 샵아이디 입력 */
	@RequestMapping(value= "restaurantDetail", method = RequestMethod.POST)
	public String restaurantBasic(int sh_id, Shop shop, ShopDetail shopDetail, 
			Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		shopDetail.setSh_id(sh_id);
		if (shopDetail.getAloneMeal() ==null) shopDetail.setAloneMeal("n");
		if (shopDetail.getBlanket() ==null) shopDetail.setBlanket("n");
		if (shopDetail.getFreeWifi() ==null) shopDetail.setFreeWifi("n");
		if (shopDetail.getKidsroom() ==null) shopDetail.setKidsroom("n");
		if (shopDetail.getMobileCharge() ==null) shopDetail.setMobileCharge("n");
		if (shopDetail.getParking() ==null) shopDetail.setParking("n");
		if (shopDetail.getSmoking() ==null) shopDetail.setSmoking("n");
		if (shopDetail.getToilet() ==null) shopDetail.setToilet("n");	
		int result = sd.insert(shopDetail);
		model.addAttribute("result", result);	
		model.addAttribute("shopDetail", shopDetail);	
		model.addAttribute("sh_id", sh_id);
		shop = sv.select(s_id);
		model.addAttribute("shop", shop);
		Menu menu = ms.select(sh_id);	
		model.addAttribute("menu", menu);
		List<Menu> mlist = ms.mlist(sh_id);	
		model.addAttribute("mlist",mlist);
		
		return "shop/shopView";	
	}
}
