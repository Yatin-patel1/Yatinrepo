package com.zen;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.Controller;

public class LoginController implements Controller {
	
	
	
	@Override
	public ModelAndView handleRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		String login = req.getParameter("login");
		String paswd = req.getParameter("pswd");
		System.out.println(login +", "+ paswd);
		return null;
		
	}
	

}
