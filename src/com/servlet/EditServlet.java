package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.service.GradeService;

public class EditServlet extends HttpServlet {

	/**
	 * The doGet method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to get.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		doPost(request,response);
	}

	/**
	 * The doPost method of the servlet. <br>
	 *
	 * This method is called when a form has its tag value method equals to post.
	 * 
	 * @param request the request send by the client to the server
	 * @param response the response send by the server to the client
	 * @throws ServletException if an error occurred
	 * @throws IOException if an error occurred
	 */
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("text/html");
	    request.setCharacterEncoding("utf-8");
	    response.setCharacterEncoding("utf-8");
	    String number=request.getParameter("number");
		String name=request.getParameter("name");
	    String ugrade1=request.getParameter("ugrade1");
	    String ugrade2=request.getParameter("ugrade2");
	    String ugrade3=request.getParameter("ugrade3");
	    String ugrade4=request.getParameter("ugrade4");
	    String egrade1=request.getParameter("egrade1");
	    String egrade2=request.getParameter("egrade2");
	    String grade=request.getParameter("grade");
	    
	    GradeService gradeService=new GradeService();
	    gradeService.editGrade(number, name,ugrade1, ugrade2, ugrade3, ugrade4, egrade1, egrade2, grade);
	    request.getRequestDispatcher("/GradeManagerServlet").forward(request, response);
	}

}
