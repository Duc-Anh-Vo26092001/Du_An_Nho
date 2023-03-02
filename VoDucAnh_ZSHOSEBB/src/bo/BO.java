package bo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Account;
import bean.Category;
import bean.Product;
import dao.ketnoi;

public class BO {
	 Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	    public List<Product> getAllProduct() {
	        List<Product> list = new ArrayList<>();
	        String query = "select * from product";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(new Product(rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getLong(4),
	                        rs.getLong(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getString(8)));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }

	    public List<Category> getAllCategory() {
	        List<Category> list = new ArrayList<>();
	        String query = "select * from Category";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(new Category(rs.getInt(1),
	                        rs.getString(2)));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }

	   
	    public Product getLast() {
	        String query = "select top 1 * from product\n"
	                + "order by id desc";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            rs = ps.executeQuery();
	            while(rs.next()){
	                return new Product(rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getLong(4),
	                        rs.getLong(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getString(8));
	            }
	        } catch (Exception e) {
	        }
	        return null;
	    }
	    public List<Product> getProductByCid(String cid) {
	        List<Product> list = new ArrayList<>();
	        String query = "select * from product\n" + "where cid=?";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, cid);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(new Product(rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getLong(4),
	                        rs.getLong(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getString(8)));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }
	    public Product getProductByid(String id) {
	        String query = "select * from product\n" + "where id=?";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, id);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                return (new Product(rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getLong(4),
	                        rs.getLong(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getString(8)));
	            }
	        } catch (Exception e) {
	        }
	       return null;
	    }
	    public Category getCategoryBycid(String cid) {
	        String query = "select * from Category\n" + "where cid=?";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, cid);
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                return (new Category(rs.getInt(1),
	                        rs.getString(2)));
	            }
	        } catch (Exception e) {
	        }
	       return null;
	    }
	    public List<Product> getProductByname(String txtSearch) {
	        List<Product> list = new ArrayList<>();
	        String query = "select * from product\n" + "where [name] like ?";
	        try {
	            conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, "%"+ txtSearch +"%");
	            rs = ps.executeQuery();
	            while (rs.next()) {
	                list.add(new Product(rs.getInt(1),
	                        rs.getString(2),
	                        rs.getString(3),
	                        rs.getLong(4),
	                        rs.getLong(5),
	                        rs.getString(6),
	                        rs.getString(7),
	                        rs.getString(8)));
	            }
	        } catch (Exception e) {
	        }
	        return list;
	    }
	    public Account login(String user, String pass) {
	    	String query= "select *from account\n" + "where [user]=?\n" + "and pass=?\n";
	    	
	    	try {
	    		conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, user);
	            ps.setString(2, pass);
	            rs = ps.executeQuery();
	            while(rs.next()) {
	            	return new Account(rs.getInt(1), 
	            			rs.getString(2), 
	            			rs.getString(3), 
	            			rs.getString(4), 
	            			rs.getString(5),
	            			rs.getString(6));
	            }
	    		
	    	}catch(Exception e) {
	    		
	    	}
	    	return null;
	    }
	    public Account checkAccountexit(String user) {
	    	String query= "select *from account\n" + "where [user]=?\n" ;
	    	
	    	try {
	    		conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, user);
	            rs = ps.executeQuery();
	            while(rs.next()) {
	            	return new Account(rs.getInt(1), 
	            			rs.getString(2), 
	            			rs.getString(3), 
	            			rs.getString(4), 
	            			rs.getString(5),
	            			rs.getString(6));
	            }
	    		
	    	}catch(Exception e) {
	    		
	    	}
	    	return null;
	    }
	    public void Signup (String user, String pass) {
           String query= "insert into Account(user,pass)\n +values(?,?,NULL,NULL,NULL)";
	    	
	    	try {
	    		conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
	            ps.setString(1, user);
	            ps.setString(2, pass);
	            ps.executeUpdate();
	            
	    		
	    	}catch(Exception e) {
	    		
	    	}
	    }
	    
	    public static void main(String[] args) {
	        BO bo = new BO();
	        List<Product> list = bo.getAllProduct();
	        List<Category> listC = bo.getAllCategory();

	        for (Category o : listC) {
	            System.out.println(o);
	        }
	    }
}
