package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Quanlysanphamdao {

	
		Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;
	    public void deleteProduct(String pid) {
	        String query = "delete from product\n"
	                + "where id = ?";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, pid);
	            ps.executeUpdate();
	        } catch (Exception e) {
	        }
	    }
		
		  public boolean insertProduct(String name, String image, String
		  price, String amount,String title, String description, String category) {
		 
		 
		  if ( name.equals("") || image.equals("") ||
		  price.equals("")|| amount.equals("")|| title.equals("")||
		 description.equals("")|| category.equals("")) { 
			  return false;
			} else {	  
		  String query = "INSERT INTO product( name, image, price, amount, title, description, cid ) \n" +
		  "valUES(?,?,?,?,?,?,?)"; 
		  try { conn = new ketnoi().getConnection();//moket noi voi sql 
		  ps = conn.prepareStatement(query); 
		  ps.setString(1, name); ps.setString(2, image); ps.setString(3, price);
		  ps.setString(4, amount); ps.setString(5, title); ps.setString(6,
		  description); ps.setString(7, category); 
		  
		  return ps.executeUpdate()>0; } catch (Exception e) { } return true; } }
		 
		
		/*
		 * public void insertProduct(String id,String name, String image, String price,
		 * String amount, String title, String description, String category, int sid) {
		 * String query = "INSERT [dbo].[product] \n" +
		 * "([id], [name], [image], [price],[amount], [title], [description], [cateID], [sell_ID] \n"
		 * + "VALUES(?,?,?,?,?,?,?,?,?)"; try { conn = new ketnoi().getConnection();//mo
		 * ket noi voi sql ps = conn.prepareStatement(query); ps.setString(1,id);
		 * ps.setString(2, name); ps.setString(3, image); ps.setString(4, price);
		 * ps.setString(5, amount); ps.setString(6, title); ps.setString(7,
		 * description); ps.setString(8, category); ps.setInt(9, sid);
		 * 
		 * ps.executeUpdate(); } catch (Exception e) { } }
		 */

	    public void editProduct(String name, String image, String price,String amount,
	            String title, String description, String category, String pid) {
	        String query = "update product\n"
	                + "set [name] = ?,\n"
	                + "[image] = ?,\n"
	                + "price = ?,\n"
	                + "amount= ?,\n"
	                + "title = ?,\n"
	                + "[description] = ?,\n"
	                + "cid = ?\n"
	                + "where id = ?";
	        try {
	            conn =new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, name);
	            ps.setString(2, image);
	            ps.setString(3, price);
	            ps.setString(4, amount);
	            ps.setString(5, title);
	            ps.setString(6, description);
	            ps.setString(7, category);
				ps.setString(8, pid);
	            ps.executeUpdate();
	        } catch (Exception e) {
	        }
	    }

}
