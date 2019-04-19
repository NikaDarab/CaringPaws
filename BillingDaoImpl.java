package test.domain.billing;
import java.sql.Connection;
import java.sql.PreparedStatement;
//import java.lang.Math;

import test.db.DbManager;

public class BillingDaoImpl implements Payment {

	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	public int enter(Billing c) {
		int status = 0;
		try{
			conn = db.getConnection();
			ps =conn.prepareStatement("insert into paymentTypes values(?,?,?,?,,111111)");
			ps.setString(1, c.getCardType());
			ps.setString(2, c.getCardNo());
			ps.setString(3, c.getCVV());
			ps.setString(4, c.getExpiryDate());
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}
	
}