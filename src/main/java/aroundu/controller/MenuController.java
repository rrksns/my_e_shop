package aroundu.controller; 

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;

import javax.servlet.http.HttpServletRequest;
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
	
	@Autowired
	SellerService ss;
	
	/*수동 or 자동 등록 선택 */
	@RequestMapping("menuRegist")
	public String menuRegist(Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);//세션 가져오기
		Shop shop = sv.select(s_id); // s_id로 샵정보 가져오기		
		model.addAttribute("shop", shop);// 샵의 정보를 모델에 넣어서 뿌리기
		return "shop/menuRegist";
	}
	/*메뉴 정보 및 샵 아이디 받기 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.GET)
	public String restuarantMenu(Menu menu, HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		Shop shop = sv.select(s_id);
		model.addAttribute("shop", shop);
//		int sh_id = shop.getSh_id();
//		model.addAttribute("sh_id", sh_id);	
		return "shop/restaurantMenu";
	}
	/*메뉴 정보 및 샵 아이디 기입 */
	@RequestMapping(value="restaurantMenu", method = RequestMethod.POST)
	public String restuarantMenu(int sh_id, Menu menu, Model model, HttpServletRequest request) throws IOException {
		menu.setSh_id(sh_id);
		if(!menu.getMenu1().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+menu.getMenu1().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/menuPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(menu.getMenu1().getBytes());
			fs.close();
			menu.setIt_img1(fname);				
		}
		if(!menu.getMenu2().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+menu.getMenu2().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/menuPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(menu.getMenu2().getBytes());
			fs.close();
			menu.setIt_img2(fname);				
		}
		if(!menu.getMenu3().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+menu.getMenu3().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/menuPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(menu.getMenu3().getBytes());
			fs.close();
			menu.setIt_img3(fname);				
		}	
		int result = ms.insert(menu);
		model.addAttribute("result", result);
		model.addAttribute("sh_id", sh_id);
		return "shop/restaurantMenuResult";
	}
	
	@RequestMapping("restaurantMenuResult")
	public String restaurantMenuResult(int sh_id, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		model.addAttribute("sh_id", sh_id);
		Shop shop = sv.select(s_id);
		model.addAttribute("shop", shop);
		return "shop/restaurantDetail";
	}
	
}