package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import bean.Viewchuyentien;

public class Viewchuyentiendao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
    public List<Viewchuyentien> getALLChuyenTien(){
    List<Viewchuyentien> list= new ArrayList<>();
	String query="select *from VIEW_CHUYENTIEN ";
	try {
		
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(query);
        rs = ps.executeQuery();
		
		while(rs.next()) {
			  long invoiceDetailid=rs.getLong("invoiceDetailid");
			  long invoiceid=rs.getLong("invoiceid");;
			  String fullname=rs.getString("fullname");
			  String name=rs.getString("name");;
			  long quantitypurchased=rs.getLong("quantitypurchased");;
			  long price=rs.getLong("price");;
			  long intomoney=rs.getLong("intomoney");
			  int condition=rs.getInt("condition");
			  list.add(new Viewchuyentien(invoiceDetailid,invoiceid,fullname,name,quantitypurchased,price,intomoney,condition));
		}
		
	} catch (Exception e) {
		/*e.printStackTrace();*/
	}
	return list;
}
}


