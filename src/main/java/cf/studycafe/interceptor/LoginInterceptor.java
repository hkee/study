package cf.studycafe.interceptor;

import org.slf4j.Logger;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.LoggerFactory;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

public class LoginInterceptor  extends HandlerInterceptorAdapter{

	private static final String Login ="login";
	private static final Logger logger = LoggerFactory.getLogger(LoginInterceptor.class);
	
	@Override
	public void postHandle(HttpServletRequest request,HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception{
		logger.info("postHandle");
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object membervo = modelMap.get("membervo");
		
		if (membervo != null)
		{
			logger.info("new login success");
			session.setAttribute(Login, membervo);
			//response.sendRedirect("/");
		}
	}
	@Override
	public boolean preHandle(HttpServletRequest request,HttpServletResponse response, Object handler) throws Exception{
	
		HttpSession session = request.getSession();
		if(session.getAttribute(Login) != null)
		{
			logger.info("clear login data before");
			session.removeAttribute(Login);
		}
		return true;
	}
	
}
