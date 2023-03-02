package controller;

import java.io.IOException;
import java.util.Date;
import java.util.Random;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import bean.Account;
import bean.Cart;
import bo.BO;
import bo.Cartbo;
import dao.Dangnhapdao;
import dao.DesBuyHistorydao;
import dao.Invoicedao;

/**
 * Servlet implementation class Invoice
 */
@WebServlet("/Invoice")
public class InvoiceController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public InvoiceController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//Insert giohang vào csdl hóa đơn và chi tiết hóa đơn với tình trạng là chưa mua(damua=0)
				HttpSession session = request.getSession(); 
				Cartbo gh =(Cartbo)session.getAttribute("gio");
				Dangnhapdao dn =new Dangnhapdao();
				String user = ((Account) session.getAttribute("acc")).getUser().toString();
				
				request.setAttribute("user", user);
				
				Invoicedao hd = new Invoicedao();
				Random r = new Random();
				Date n = new Date();
				SimpleDateFormat dd = new SimpleDateFormat("yyyy-MM-dd");
				
				if(request.getParameter("butmuahang")!=null) {
					
					try {
						int makh = dn.getMakh(user);
						System.out.println(user);
						//int mahd = r.nextInt(10000);
						
						int mahdmax = hd.getMaxOfMaHoaDon();
						
						if(hd.themHoaDon(mahdmax + 1, makh , dd.format(n), 0)==true) {
							
							DesBuyHistorydao cthd = new DesBuyHistorydao();
							for (Cart s: gh.cr) {
								cthd.themChiTietHoaDon(s.getId(), (int)s.getAmount(), mahdmax +1);
							}
							// Lưu hóa đơn vào session và hiển thị ra chứ chưa dùng sql để hiển thị hóa đơn
							
//							hoadonbo hoadon =null;
//							if(session.getAttribute("hoadon")==null){
//								hoadon = new hoadonbo();	//Cap vung nho		
//								session.setAttribute("hoadon", hoadon);	//Tao session
//							}
		//
//							hoadon = (hoadonbo)session.getAttribute("hoadon");
//							
//							hoadon.themHoaDon(mahd, makh, "2022-11-07", 0);
//							session.setAttribute("hoadon", hoadon);
							
							// Kết thúc việc đưa hóa đơn vào session
							
							gh.xoaTatCa();
							
							response.sendRedirect("htInvoice");
						}
					} catch (Exception e) {
						e.printStackTrace();
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
