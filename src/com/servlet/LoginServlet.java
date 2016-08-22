package com.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import com.service.UserService;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
		request.setCharacterEncoding("utf-8");
		response.setCharacterEncoding("utf-8");	
		String number=request.getParameter("number");
		String password=request.getParameter("password");
		UserService userService=new UserService();
		if(userService.login(number, password)){
			HttpSession session=request.getSession();
			session.setAttribute("number", number);
			request.getRequestDispatcher("index.html").forward(request, response);
		}else{
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}						
	}

}
