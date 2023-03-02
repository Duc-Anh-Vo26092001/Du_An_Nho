package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;
import bean.Adminsignup;

import bo.Adminsignupbo;
import bo.BO;

/**
 * Servlet implementation class dangnhapadmin
 */
@WebServlet("/dangnhapadmin")
public class dangnhapadmin extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public dangnhapadmin() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String username = request.getParameter("user");
		String password = request.getParameter("pass");
		if (username != null && password != null) {
			Adminsignupbo dnbo = new Adminsignupbo();
			Adminsignup ad = dnbo.admindn(username, password);
			if(ad!=null){//Dang nhap dung
				  //Tao doi tuong session
				  HttpSession session=request.getSession();
				  session.setAttribute("admin", ad);
				response.sendRedirect("AdminController");
			  }else {//Dang nhap sai
				  RequestDispatcher rd= request.getRequestDispatcher("LOGINADMIN.jsp");
				  rd.forward(request, response);
			  }
				  
		  }else {//Chay lan dau
			  RequestDispatcher rd= request.getRequestDispatcher("LOGINADMIN.jsp");
			  rd.forward(request, response);
			  }
			/*
			 * if(ad==null) { request.setAttribute("mess","Wrong user or password");
			 * request.getRequestDispatcher("LOGINADMIN.jsp").forward(request, response);
			 * }else { request.getRequestDispatcher("HomeController").forward(request,
			 * response); HttpSession session = request.getSession();
			 * session.setAttribute("acc", ad); session.setMaxInactiveInterval(1000);
			 * response.sendRedirect("ADMINCRUD.jsp"); }
			 */
		}
	

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
