package aroundu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInter extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object arg2)throws Exception{
		HttpSession session = request.getSession();
		String s_id = (String)session.getAttribute("s_id");
		if(s_id==null || s_id.equals("")){
			response.sendRedirect("seller/sellerLoginForm");
			return false;
		}
		return true;
	}

}
