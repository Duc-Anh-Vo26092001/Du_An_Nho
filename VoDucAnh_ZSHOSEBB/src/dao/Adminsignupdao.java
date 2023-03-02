package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


import bean.Adminsignup;

public class Adminsignupdao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	public Adminsignup admindn(String Users, String Pass) {
		String query="select * from Adminsignup where Users=? and Pass=?";
		try {
    		conn = new ketnoi().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, Users);
            ps.setString(2, Pass);
            rs = ps.executeQuery();
            while(rs.next()) {
            	return new Adminsignup( rs.getString(1), 
            			rs.getString(2), 
            			rs.getBoolean(3));
            }
    		
    	}catch(Exception e) {
    		
    	}
    	return null;
    }
}
