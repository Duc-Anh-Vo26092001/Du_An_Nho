package dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class DesBuyHistorydao {
	 Connection conn = null;
	    PreparedStatement ps = null;
	    ResultSet rs = null;

	public boolean themChiTietHoaDon(String id, int quantitypurchased, int invoiceid) {
		
		String sql = "INSERT INTO InvoiceDetail(id, quantitypurchased,invoiceid)\n" +
				"valUES(?,?,?)";
		try {
			conn = new ketnoi().getConnection();//mo ket noi voi sql
	        ps = conn.prepareStatement(sql);
			/* rs = ps.executeQuery(); */
			ps.setString(1, id);
			ps.setInt(2, quantitypurchased);
			ps.setInt(3, invoiceid);

			return ps.executeUpdate() > 0;
		} catch(Exception e){
			e.printStackTrace();
		}
		return true;
	}
}



