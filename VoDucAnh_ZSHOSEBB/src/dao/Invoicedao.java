package dao;


import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.List;

import bean.Invoice;
import bean.BuyHistory;

public class Invoicedao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	
	public boolean themHoaDon(int invoiceid, int uID, String purchdate, int condition) {
		
		String sql = "INSERT INTO Invoice(invoiceid, uID, purchdate, condition)\n" +
				"valUES(?,?,?,?)";
		try {
			 conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(sql);
				/* rs = ps.executeQuery(); */
			ps.setInt(1, invoiceid);
			ps.setInt(2, uID);
			ps.setString(3, purchdate);
			ps.setInt(4, condition);

			return ps.executeUpdate() > 0;
		} catch(Exception e){
			e.printStackTrace();
		}
		return true;
	}
	public boolean suaHoaDon(int invoiceid) throws Exception{
		
		String sql = "UPDATE Invoice\n" +
				"set condition=1 where invoiceid=?";
		try {
			conn = new ketnoi().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(sql);
			/* rs = ps.executeQuery(); */
			ps.setInt(1, invoiceid);

			return ps.executeUpdate() > 0;
		} catch(Exception e){
			e.printStackTrace();
		}
		return true;
	}
	public List<Invoice> getHoaDon(int uID) throws Exception{
		List<Invoice> list = new ArrayList<>();
		
		String sql = "select * from Invoice where uID='"+ uID + "'" ;
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		while(rs.next()) {
			Invoice in = new Invoice(rs.getString(1), rs.getInt(2), rs.getString(3), rs.getInt(4));
			list.add(in);
		}
		return list;
	}
	public int getTongHoaDon(int uID) throws Exception{
		int soHoaDon =0;
		
		String sql = "select count(invoiceid) from Invoice where uID='"+ uID + "' and condition=0" ;
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		
		while(rs.next()) {
			soHoaDon = rs.getInt(1);
		}
		return soHoaDon;
	}
	
	public List<BuyHistory> getLichSuMuaHang(int uID) throws Exception{
		List<BuyHistory> list = new ArrayList<>();
		
		String sql = "select * from VIEW_LSM where uID='" + uID + "'";
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		while(rs.next()) {
			BuyHistory ls = new BuyHistory(rs.getString(1), rs.getString(2), rs.getString(3), rs.getLong(4), 
					rs.getLong(5), rs.getLong(6), rs.getInt(7), rs.getInt(8));
			list.add(ls);
		}
		return list;
	}
	public int getTongLichSuMua(int uID) throws Exception{
		int soHoaDon =0;
		
		String sql = "select count(invoiceid) from VIEW_LSM where uID='"+uID + "'";
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		
		
		while(rs.next()) {
			soHoaDon = rs.getInt(1);
		}
		return soHoaDon;
	}
	public int getMaxOfMaHoaDon() throws Exception{
		int max = 0;
		
		
		String sql = "select max(invoiceid) from Invoice";
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		
		while(rs.next()) {
			max = rs.getInt(1);
		}
		return max;
	}
	public static void main(String[] args) throws Exception {
		Invoicedao i = new  Invoicedao();
		List<BuyHistory> ds = i.getLichSuMuaHang(1);
//		for(BuyHistory s: ds) {
//			System.out.println(s.getInvoiceid());
//		}
		System.out.println(ds.size());
	}
}




	
	

