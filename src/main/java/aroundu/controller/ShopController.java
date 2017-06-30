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
import aroundu.model.ShopDetail;
import aroundu.service.MenuService;
import aroundu.service.SellerService;
import aroundu.service.ShopDetailService;
import aroundu.service.ShopService;
 
@Controller
public class ShopController {
	@Autowired 
	SellerService ss;
	
	@Autowired 
	ShopService sv;
	
//	@Autowired
//	ShopDetailService sd;
	
	@Autowired 
	MenuService ms;
	
	
	/*샵 메인실행*/
	@RequestMapping("shopMain")
	public String shopMain(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		return "shop/shopMain";
	}
	/*샵 템플릿 선택*/
	@RequestMapping("shopRegist")
	public String shopRegist(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("id"); //세션의의 s_id를 가져와서
		Seller seller = ss.select(s_id); // s_id를 추출해서 seller의 정보를 가져오고
		model.addAttribute("seller", seller); //가져온 정보를 화면에 보내줌
		return "shop/shopRegist";
	}
	/*샵 기본정보 받기 */
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.GET)
	public String restaurantBasic(Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		Shop shop =  sv.select(s_id);
		model.addAttribute("shop", shop);
		return "shop/restaurantBasic";
	}
	/*샵 기본정보 등록 */
	@RequestMapping(value= "restaurantBasic", method = RequestMethod.POST)
	public String restaurantBasic(Shop shop, Model model,HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		shop.setS_id(s_id);
		if (shop.getDineIn() ==null) shop.setDineIn("n");
		if (shop.getTakeOut() ==null) shop.setTakeOut("n");
		if (shop.getDelivery() ==null) shop.setDelivery("n");
		if (shop.getAllday_open() ==null) shop.setAllday_open("n");
		System.out.println("con sh_name="+shop.getSh_name());
		int result = sv.insert(shop);
		model.addAttribute("result", result);
		int sh_id = shop.getSh_id();
		model.addAttribute("sh_id", sh_id);
		
//		model.addAttribute("shop", shop);
		return "shop/restaurantPicture";
	}
	/*샵 사진 등록 */
	@RequestMapping(value= "restaurantPicture", method = RequestMethod.GET)
	public String restaurantPicture(Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);	
		Shop shop = sv.select(s_id);
		int sh_id = shop.getSh_id();
		model.addAttribute("sh_id", sh_id);			
		return "shop/restaurantPicture";		
		}	
	
	
	@RequestMapping(value="restaurantPicture", method = RequestMethod.POST)
	public String restaurantPicture(int sh_id, Model model, Shop shop, HttpSession session,
			HttpServletRequest request) throws IOException {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		shop.setSh_id(sh_id);
		if(!shop.getFile1().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile1().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile1().getBytes());
			fs.close();
			shop.setSh_img1(fname);				
		}
		if(!shop.getFile2().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile2().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile2().getBytes());
			fs.close();
			shop.setSh_img2(fname);				
		}
		if(!shop.getFile3().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile3().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile3().getBytes());
			fs.close();
			shop.setSh_img3(fname);				
		}
		if(!shop.getFile4().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile4().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile4().getBytes());
			fs.close();
			shop.setSh_img4(fname);				
		}
		if(!shop.getFile5().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile5().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile5().getBytes());
			fs.close();
			shop.setSh_img5(fname);				
		}
		if(!shop.getFile6().isEmpty()){	
			long date = new Date().getTime();
			String fname = date+"-"+shop.getFile6().getOriginalFilename();			
			String path = request.getSession().getServletContext().getRealPath("/shopPic/upload");
			String fpath = path + "\\" + fname;			
			FileOutputStream fs = new FileOutputStream(fpath);
			fs.write(shop.getFile6().getBytes());
			fs.close();
			shop.setSh_img6(fname);				
		}
		
		sv.update(shop);		
		int result = sv.update(shop);
		model.addAttribute("seller", seller);
		model.addAttribute("result", result);
		model.addAttribute("sh_id", sh_id);	
		model.addAttribute("shop", shop);
		return "shop/menuRegist";
	}
	
	/*샵 View */
	@RequestMapping(value= "shopView", method = RequestMethod.GET)
	public String shopView(Shop shop, Menu menu, ShopDetail shopDetail,
			Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id"); 
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		shop = sv.select(s_id);	
		int sh_id = shop.getSh_id(); 
		String sh_name=shop.getSh_name();
		model.addAttribute("sh_id", sh_id);	
		model.addAttribute("sh_name", sh_name);
//		model.addAttribute("shop", shop);
//		System.out.println("가계 설명은"+shop.getSh_content());
		return "shop/shopView";
	}
	/*샵 View */
	@RequestMapping(value= "shopView", method = RequestMethod.POST)
	public String shopView(Shop shop, Model model,HttpSession session) {

		return "shop/shopView";
	}
	
}