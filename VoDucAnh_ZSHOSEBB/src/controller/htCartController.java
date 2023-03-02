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

import bean.Product;
import bo.BO;
import bo.Cartbo;


/**
 * Servlet implementation class htCartController
 */
@WebServlet("/htCartController")
public class htCartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htCartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*
		 * BO bo = new BO(); List<Product> list = bo.getAllProduct();
		 * request.setAttribute("listP", list);
		 */
		
		HttpSession session = request.getSession(); 
		Cartbo gh = (Cartbo) session.getAttribute("gio");
		
		if (request.getParameter("butsua") != null) {
			long price = Long.parseLong(request.getParameter("txtsl"+request.getParameter("butsua")));
			gh.Capnhapgiohang(request.getParameter("butsua"), price);
		}
		else if(request.getParameter("butxoa")!= null) {
			gh.XoaItem(request.getParameter("butxoa"));
		}
		 
		session.setAttribute("gio", gh);
        if(request.getParameter("xoaall")!= null) {
		    session.removeAttribute("gio");
		    response.sendRedirect("HomeController");
		    return;
		}
		
		if (gh.cr.size() != 0) {
			RequestDispatcher rd= request.getRequestDispatcher("Cart.jsp");
		    rd.forward(request, response);
		}
	   else {
	       response.sendRedirect("HomeController");
	   }
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
