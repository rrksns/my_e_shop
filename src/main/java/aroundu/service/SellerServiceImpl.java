package aroundu.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import aroudu.dao.SellerDao;

@Service
public class SellerServiceImpl implements SellerService{
	@Autowired
	private SellerDao sd;

}
