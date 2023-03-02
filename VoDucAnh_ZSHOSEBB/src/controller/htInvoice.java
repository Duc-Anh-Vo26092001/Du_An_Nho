package controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;
import bean.Invoice;
import dao.Dangnhapdao;
import dao.Invoicedao;

/**
 * Servlet implementation class htInvoice
 */
@WebServlet("/htInvoice")
public class htInvoice extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public htInvoice() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		String user = ((Account) session.getAttribute("acc")).getUser().toString();
		Dangnhapdao dn = new Dangnhapdao();
		try {
			request.setAttribute("tenmua", user);
			int uID = dn.getMakh(user);
			
			Invoicedao in = new Invoicedao();
			
    		 in.getHoaDon(uID); 
			List<Invoice> list = in.getHoaDon(uID);
			request.setAttribute("listhoadon", list);
			
			RequestDispatcher rd = request.getRequestDispatcher("Pay.jsp");	
			rd.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
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
