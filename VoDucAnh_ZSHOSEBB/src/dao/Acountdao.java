package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import bean.Account;


public class Acountdao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	public List<Account> getAccount(){
		List<Account> list = new ArrayList<>();
		String query = "select * from Account";
		try {
			
			//Lay du lieu ve
			conn = new ketnoi().getConnection();//mo ket noi voi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getString(5),
                        rs.getString(6)));
                        
            }
        } catch (Exception e) {
        }
        return list;
    }
}
