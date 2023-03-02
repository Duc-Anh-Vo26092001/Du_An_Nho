package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bo.Cartbo;


/**
 * Servlet implementation class CartController
 */
@WebServlet("/CartController")
public class CartController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CartController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		  String id=request.getParameter("id");
		  String image=request.getParameter("image");
		  String name=request.getParameter("name");
		  long price=Long.parseLong(request.getParameter("price")); 
		  Cartbo gh=null;
		  
		  HttpSession session = request.getSession();
		  if(session.getAttribute("gio")==null){
			  gh = new Cartbo();
			  session.setAttribute("gio", gh);
		  }
		  
		  gh=(Cartbo)session.getAttribute("gio");
		 
		  gh.Them(id, image, name, price, (long) 1);
		  
		  session.setAttribute("gio", gh);
		  response.sendRedirect("htCartController");
		 
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
