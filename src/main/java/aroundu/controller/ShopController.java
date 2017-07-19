package aroundu.controller; 

import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
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
	
	@Autowired
	ShopDetailService sd;
	
	@Autowired 
	MenuService ms;
	
<<<<<<< HEAD
	/*my eshop 실행*/
	@RequestMapping("shopManagement")
	public String shopManagement(HttpSession session, Model model) {
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		Shop shop =  sv.select(s_id);
		model.addAttribute("shop", shop);
		return "shop/shopManagement";
=======
	/*해당샵 조회후 호출*/
	@RequestMapping("shopView1")
	public String shopView1(int sh_id, Model model){	
		Shop shop = sv.select2(sh_id);
		model.addAttribute(shop);		
		
		/*menu 가져오기*/
		Menu menu = ms.select(sh_id);		
		List<Menu> mlist = ms.list(menu);
			
		/*shopDetail 가져오기*/
		ShopDetail shopDetail = sd.select(sh_id);
		model.addAttribute(shopDetail);
		int sh_detailId=shopDetail.getSh_detailId();		
		model.addAttribute("sh_detailId",sh_detailId);
		
		return "shop/shopView1";
>>>>>>> 6907c1eb802efb96c6093a4f5e424d1bf6b94d53
	}
	
	/*샵 등록 실행*/
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
		/*세션에서 S_id 추출 후 shop에 s_id 입력 */
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		shop.setS_id(s_id);
		/*샵 기본 정보 입력 후 result 뿌려줌 */
		if (shop.getDineIn() ==null) shop.setDineIn("n");
		if (shop.getTakeOut() ==null) shop.setTakeOut("n");
		if (shop.getDelivery() ==null) shop.setDelivery("n");
		if (shop.getAllday_open() ==null) shop.setAllday_open("n");
		int result = sv.insert(shop);
		model.addAttribute("result", result);
		/*등록된 샵에서 sh_id 추출 후 뿌려줌 */
		int sh_id = shop.getSh_id();
		model.addAttribute("sh_id", sh_id);

		return "shop/restaurantPicture";
	}
	/*샵 사진 등록 */
	@RequestMapping(value= "restaurantPicture", method = RequestMethod.GET)
	public String restaurantPicture(Model model, HttpSession session) {
		/*세션에서 S_id 추출 후 shop에 s_id 입력 */
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		Shop shop = sv.select(s_id);
		/*select 한 샵에서 sh_id 추출후 sh_id 뿌려줌 */
		int sh_id = shop.getSh_id();
		model.addAttribute("sh_id", sh_id);	
		
		return "shop/restaurantPicture";		
		}	
	
	
	@RequestMapping(value="restaurantPicture", method = RequestMethod.POST)
	public String restaurantPicture(int sh_id, Model model, Shop shop, HttpSession session,
			HttpServletRequest request) throws IOException {
		/*세션에서 S_id 추출 후 shop에 s_id 입력 */
		String s_id = (String)session.getAttribute("id");
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
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
		model.addAttribute("result", result);
		model.addAttribute("sh_id", sh_id);		
		
		shop = sv.select(s_id);
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
		
		/*shop 정보 가져오기*/
		shop = sv.select(s_id);	
		model.addAttribute("shop", shop);
		int sh_id = shop.getSh_id();
		
		/*menu 가져오기*/
		menu = ms.select(sh_id);	

		model.addAttribute("menu", menu);
			
		/*shopDetail 가져오기*/
		int sh_detailId=shopDetail.getSh_detailId();
		shopDetail = sd.select(sh_detailId);
		model.addAttribute("sh_detailId",sh_detailId);
		return "shop/shopView";
	}
	/*샵 View */
	@RequestMapping(value= "shopView", method = RequestMethod.POST)
	public String shopView(Shop shop, ShopDetail shopDetail,
			Menu menu, Model model, HttpSession session) {
		String s_id = (String)session.getAttribute("id"); 
		Seller seller = ss.select(s_id);
		model.addAttribute("seller", seller);
		/*shop 정보 가져오기*/
		shop = sv.select(s_id);	
		model.addAttribute("shop", shop);
		int sh_id = shop.getSh_id();
		
		/*menu 가져오기*/
		menu = ms.select(sh_id);	

		model.addAttribute("menu", menu);
			
		/*shopDetail 가져오기*/
		int sh_detailId=shopDetail.getSh_detailId();
		shopDetail = sd.select(sh_detailId);
		model.addAttribute("sh_detailId",sh_detailId);
		return "sellerMain";
	}
	
	/*메인에서 shop조회를 위한 각종정보조회*/
	@RequestMapping("shopGo")
	public String shopGo(int sh_id, Model model){		
		
		Shop shop =sv.select2(sh_id);
		Menu menu =ms.select2(sh_id);
		ShopDetail shopDetail = sd.select2(sh_id);
		List<Menu> mlist = ms.list(menu);
		model.addAttribute("shop",shop);
		model.addAttribute("menu",menu);
		model.addAttribute("shopDetail",shopDetail);	
		model.addAttribute("mlist",mlist);	
		return "shop/shopGo";
	}
	
	@RequestMapping("shopList")
	public String shopList(Model model,HttpSession session) {
			String id=(String)session.getAttribute("id");
			List<Shop> shopList = sv.getShopMainList();
			model.addAttribute("shopList", shopList);
		return "shop/shopList";
	}
	/*셀러 로그인시 메인*/
	@RequestMapping("sellerShopList")
	public String sellerShopList(Model model,HttpSession session) {
			String s_id=(String)session.getAttribute("id");
			List<Shop> sellerShopList = sv.getSellerShopList();
			model.addAttribute("sellerShopList", sellerShopList);
		return "shop/shopList";
	}
	
	
	/*로그인한 아이디로 해당리스트 검색*/
	@RequestMapping("shopList1")
	public String shopList1(Model model,HttpSession session) {
			String id=(String)session.getAttribute("id");			
			List<Shop> shopList = sv.getShopMainList1(id);
			model.addAttribute("shopList", shopList);
		return "shop/shopList";
	}
	
	

}
