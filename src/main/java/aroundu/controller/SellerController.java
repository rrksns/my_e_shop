package aroundu.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;

import aroudu.dao.SellerDao;

@Controller
public class SellerController {
	@Autowired SellerDao sd;

}
