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
 * Servlet implementation class XuLyqlsanpham
 */
@WebServlet("/XuLyqlsanpham")
public class XuLyqlsanpham extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public XuLyqlsanpham() {
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
				
				String name = request.getParameter("name");
				String image = request.getParameter("image");
				String price = request.getParameter("price");
				String amount = request.getParameter("amount");
				String title= request.getParameter("title");
				String description = request.getParameter("description");
				String category = request.getParameter("category");
				
				if( name!=null && image!=null && price!=null &&amount!=null &&title!=null&&description!=null &&category!=null ) {
					Quanlysanphamdao ql = new Quanlysanphamdao();
					if (ql.insertProduct(name, image, price, amount, title, description, category)==true) {
						response.sendRedirect("Quanlysanpham");
					}
				}
	     }
			 
			
			
//			 String pid=request.getParameter("id"); String pname =
//			  request.getParameter("name"); String pimage = request.getParameter("image");
//			  String pprice=request.getParameter("price"); String
//			  pamount=request.getParameter("amount"); String ptitle =
//			  request.getParameter("title"); String pdescription =
//			  request.getParameter("description"); String pcategory =
//			 request.getParameter("category"); int
//			  psid=Integer.parseInt(request.getParameter("sid"));
//			  
//			  Quanlysanphamdao ql = new Quanlysanphamdao();
//			  ql.insertProduct(pcategory,pname, pimage, pname, pimage, ptitle,
//			  pdescription, pcategory, psid); 
//			  response.sendRedirect("Quanlysanpham");
//			 
	        
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
