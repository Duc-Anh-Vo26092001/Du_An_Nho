package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.Quanlyloaidao;

/**
 * Servlet implementation class Xulyqlloai
 */
@WebServlet("/Xulyqlloai")
public class Xulyqlloai extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public Xulyqlloai() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
	    response.setCharacterEncoding("UTF-8");
		if(request.getParameter("butthemloai")!=null) {
			String cid = request.getParameter("txtml");
			String cname = request.getParameter("txttl");
			if(cid!=null && cname!=null) {
				Quanlyloaidao ql = new Quanlyloaidao();
				if (ql.AddL(cid,cname)==true) {
					response.sendRedirect("Quanlyloai");
				}
			}
		}
	}
	/*
	 * if(request.getParameter("butsualoai")!=null) { String cidcu=
	 * request.getParameter("butsualoai");
	 * 
	 * String cid = request.getParameter("txtmls"); String cname =
	 * request.getParameter("txttls"); if(cid!=null && cname!=null) { Quanlyloaidao
	 * ql = new Quanlyloaidao(); if (ql.Updd(cidcu,cid,cname)==true) {
	 * response.sendRedirect("Quanlyloai"); } } } }
	 */
	/*
	 * if(request.getParameter("butxoa")!=null) { String id =
	 * request.getParameter("butxoa"); Quanlyloaidao ql = new Quanlyloaidao(); if
	 * (ql.DeLL(id)==true) { response.sendRedirect("Quanlyloai"); } }
	 * 
	 * }
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
