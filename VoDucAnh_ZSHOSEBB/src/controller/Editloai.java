package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Quanlyloaidao;
import dao.Quanlysanphamdao;

/**
 * Servlet implementation class Editloai
 */
@WebServlet("/Editloai")
public class Editloai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Editloai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		 request.setCharacterEncoding("UTF-8");
	     response.setCharacterEncoding("UTF-8");
	     String cidmoi=request.getParameter("cid");
		String cname = request.getParameter("cname");
		String cidcu=request.getParameter("cid");
		/*String cid= request.getParameter("cid");*/
		Quanlyloaidao ql = new Quanlyloaidao();
		ql.Updd(cidmoi, cname, cidcu );
		response.sendRedirect("Quanlyloai");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
