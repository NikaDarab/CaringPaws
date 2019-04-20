package db;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import domain.login.UserManager;
import model.*;

/**
 * 
 * @author mehra getConnection method help us to connect to the appropriate
 *         database. In this project we only have one database. Data comes from
 *         MyDB interface.
 */
public class DbManager implements MyDB {

	public Connection getConnection() {
		try {
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConnection = DriverManager.getConnection(CONN_URL, USER, PASS);
			return myConnection;
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
	}
	
	public List<Sitter> getSitters(String name, String date, String rating) {
		Connection conn;
		PreparedStatement ps;
		
		List<Sitter> sitters = new ArrayList<>();
		
		try {
			conn = this.getConnection();
			ps = conn.prepareStatement("select * from sitters");
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Sitter sitter = new Sitter(Double.parseDouble(rs.getString(1)), rs.getString(2), rs.getString(3), Integer.parseInt(rs.getString(4)), rs.getString(5), rs.getString(6), rs.getString(7), Integer.parseInt(rs.getString(8)), rs.getString(9));
				sitters.add(sitter);
			}
			
			conn.close();
			return sitters;
		} catch (Exception error) {
			System.out.println("An error occurred while getting sitters: " + error.toString());
			return null;
		}
	}
	
	public List<Pet> getPets(String userID) {
		
		Connection conn;
		PreparedStatement ps;
		
		List<Pet> pets = new ArrayList<>();
		
		try {
			conn = this.getConnection();
			String statement = "select * from pets where ownerID='" + UserManager.getInstance().getUsername()+ "'";
			ps = conn.prepareStatement(statement);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Pet pet = new Pet(rs.getString(1), rs.getString(2), rs.getString(3), rs.getString(4), Integer.parseInt(rs.getString(5)), rs.getString(6), rs.getString(7), Boolean.parseBoolean(rs.getString(8)), Integer.parseInt(rs.getString(9)), rs.getString(10));
				pets.add(pet);
			}
			
			conn.close();
			return pets;
		} catch (Exception error) {
			System.out.println("An error occurred while getting sitters: " + error.toString());
			return null;
		}
	}
}
