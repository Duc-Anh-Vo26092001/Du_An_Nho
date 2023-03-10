package controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Category;
import bo.BO;

/**
 * Servlet implementation class Quanlyloai
 */
@WebServlet("/Quanlyloai")
public class Quanlyloai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Quanlyloai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 HttpSession session= request.getSession();
	        if(session.getAttribute("admin")!=null) {

	        	BO bo = new BO();
	        	List<Category> listC = bo.getAllCategory();
	        	request.setAttribute("listCC", listC);
	        	
	            RequestDispatcher rd = request.getRequestDispatcher("ADMINCRUD.jsp");
	            rd.forward(request, response);
	         }else
	             response.sendRedirect("dangnhapadmin");
	    }



	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
