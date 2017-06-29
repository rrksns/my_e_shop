package aroundu.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class SessionCheckInter extends HandlerInterceptorAdapter{
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response,Object arg2)throws Exception{
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		if(id==null || id.equals("") ){
			response.sendRedirect("main.go");
			return false;
		}
		return true;
	}

}
