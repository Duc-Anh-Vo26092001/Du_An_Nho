package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Dangnhapdao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	public boolean KtDangNhap(String user, String pass) throws Exception{
		
		String sql="select * from Account where user='"+ user + "' and pass='" +pass+ "'";  
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        rs = ps.executeQuery();
		boolean kq= rs.next();
		rs.close();
		return kq;
	}
	
	public  int getMakh(String user)throws Exception {

		
		int makh =0;
		String sql = "select * from Account where [user]=?" ;
		conn = new ketnoi().getConnection();//mo ket noi voi sql
        ps = conn.prepareStatement(sql);
        ps.setString(1, user);
        rs = ps.executeQuery();
		while(rs.next()) {
			makh = rs.getInt(1);
		}
		return makh;
	}
	public static void main(String[] args) throws Exception {
		Dangnhapdao dn = new Dangnhapdao();
		System.out.println(dn.getMakh("Adam"));
	}
	
}

