package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Quanlyloaidao {
	Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
	public boolean AddL(String cid, String cname) {
       
        if (cid.equals("") || cname.equals("") ) {
            return false;
        } else {
//            String sql = "INSERT INTO DangNhap (TenDangNhap, MatKhau, Quyen)\n" +
//                    "vaLUES (?,?,?)";
            String sql = "INSERT INTO Category(cid, cname)\n" + "valUES (?,?)";
            try {
            	conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(sql);
                ps.setString(1, cid);
                ps.setString(2, cname);
                return ps.executeUpdate() > 0;
            } catch (Exception e) {
                e.printStackTrace();
            }
            return true;
        }
    }
	public void Updd(String cidcu,  String cname, String cidmoi) {
        
        
            String sql = "update Category \n"
                    + "set cid=?,\n "
                    + "cname=? \n"
                    + "where cid =?";
            try {
            	conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(sql);
               
                ps.setString(1, cidmoi);
                ps.setString(2, cname);
                ps.setString(3, cidcu);
                ps.executeUpdate() ;
            } catch (Exception e) {
               
            }
           
        }
    

public void DeLL(String cid) {
        
        /*if (cid.equals("")) {
            return false;
        } else {*/
            String query = "delete from Category where cid=?";
            try {
            	conn = new ketnoi().getConnection();//mo ket noi voi sql
	            ps = conn.prepareStatement(query);
                ps.setString(1, cid);
                 ps.executeUpdate();
            } catch (Exception e) {
				/* e.printStackTrace(); */
            }
            
        }
    }

