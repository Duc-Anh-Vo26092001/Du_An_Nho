package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import bean.Account;
import bo.BO;

/**
 * Servlet implementation class SignupController
 */
@WebServlet("/SignupController")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SignupController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String username= request.getParameter("user");
		String password= request.getParameter("pass");
		String repass =request.getParameter("repass");
		if(!password.equals(repass)) {
			response.sendRedirect("Login.jsp");
		}else {
			BO bo= new BO();
			Account a=bo.checkAccountexit(username);
			if(a==null) {
				//dc signup
				bo.Signup(username, password);
				response.sendRedirect("HomeController");
				
			}else {
				//day ve trang login
				/* request.getRequestDispatcher("HomeController").forward(request, response); */
				response.sendRedirect("Login.jsp");
			}
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
