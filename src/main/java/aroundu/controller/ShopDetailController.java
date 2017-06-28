package aroundu.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import aroundu.model.Shop;
import aroundu.model.ShopDetail;
import aroundu.service.ShopDetailService;
import aroundu.service.ShopService;

@Controller
public class ShopDetailController {

	@Autowired 
	ShopService sv;
	
	@Autowired
	ShopDetailService sd;
	
	/*부가정보 및 샵아이디받기 */
	@RequestMapping(value= "restaurantDetail", method = RequestMethod.GET)
	public String restaurantDetail(ShopDetail shopDetail, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("s_id"); //세션 가져오기
		Shop shop = sv.select(s_id); //shopService에서 s_id가져오고 shop을 부르기
		int sh_id = shop.getSh_id(); //shop의 sh_id 가져오기
		model.addAttribute("sh_id", sh_id);	
		return "shop/restaurantDetail";	
		
	}
	/*부가정보 및 샵아이디 입력 */
	@RequestMapping(value= "restaurantDetail", method = RequestMethod.POST)
	public String restaurantBasic(int sh_id, ShopDetail shopDetail, Model model) {
		shopDetail.setSh_id(sh_id);
		System.out.println("불러온 sh_id="+ sh_id);
		int result = sd.insert(shopDetail);
		model.addAttribute("shopDetail", shopDetail);	
		model.addAttribute("result", result);		
		return "shop/shopView";	
	}
}
