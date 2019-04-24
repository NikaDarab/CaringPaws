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
	
	public List<Sitter> getSitters(String name, String zip, String rating) {
		Connection conn;
		PreparedStatement ps;
		
		List<Sitter> sitters = new ArrayList<>();
		
		try {
			conn = this.getConnection();
			String statement = "SELECT * FROM sitters WHERE (INSTR(`name`, '" + name + "') > 0 AND averageRating > " + rating + ") AND INSTR(`zipCode`, '" + zip + "') > 0";
			System.out.println(statement);
			ps = conn.prepareStatement(statement);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Sitter sitter = new Sitter(Double.parseDouble(rs.getString(1)), rs.getString(2), rs.getString(3), rs.getString(4), Integer.parseInt(rs.getString(5)), rs.getString(6), rs.getString(7), rs.getString(8), Integer.parseInt(rs.getString(9)));
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
	
	public Sitter getSitterByID(int id) {
		Connection conn;
		PreparedStatement ps;
		
		try {
			conn = this.getConnection();
			String statement = "select * from sitters where id='" + id + "'";
			ps = conn.prepareStatement(statement);
			
			ResultSet rs = ps.executeQuery();
			
			while(rs.next()) {
				Sitter sitter = new Sitter(Double.parseDouble(rs.getString(1)), rs.getString(2), rs.getString(3), rs.getString(4), Integer.parseInt(rs.getString(5)), rs.getString(6), rs.getString(7), rs.getString(8), Integer.parseInt(rs.getString(9)));
				return sitter;
			}
			
			conn.close();
		} catch (Exception error) {
			System.out.println("An error occurred while getting sitter: " + error.toString());
			return null;
		}
		
		return null;
	}
	
	public List<Review> getReviewsOnSitter(int id) {
		Connection conn;
		PreparedStatement ps;
		
		try {
			conn = this.getConnection();
			String statement = "select * from reviews where ownerID='" + id + "'";
			ps = conn.prepareStatement(statement);
			
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Review> reviews = new ArrayList<Review>();
			
			while(rs.next()) {
				Review review = new Review(Integer.parseInt(rs.getString(1)), rs.getString(2), Integer.parseInt(rs.getString(3)), Integer.parseInt(rs.getString(4)), rs.getString(5));
				reviews.add(review);
			}
			
			conn.close();
			return reviews;
		} catch (Exception error) {
			System.out.println("An error occurred while getting sitter: " + error.toString());
			return null;
		}
	}
	
	public int saveReservation(Reservation reservation) {
		int status = 0;
		
		Connection conn;
		PreparedStatement ps;
		
		try{
			conn = this.getConnection();
			ps =conn.prepareStatement("insert into reservations values(?,?,?,?,?)");
			
			ps.setString(1, reservation.getPetName());
			ps.setInt(2, reservation.getSitterID());
			ps.setString(3, reservation.getCustomerID());
			ps.setString(4, reservation.getDate());
			ps.setString(5, null);
			
			status = ps.executeUpdate();
			conn.close();
		}catch(Exception e){
			System.out.println("Error saving reservation: " + e.toString());
		}
		return status;
	}
	
	public List<Reservation> getReservations(String username) {
		Connection conn;
		PreparedStatement ps;
		
		try {
			conn = this.getConnection();
			String statement = "select * from reservations where customerID='" + username + "'";
			ps = conn.prepareStatement(statement);
			
			ResultSet rs = ps.executeQuery();
			
			ArrayList<Reservation> reservations = new ArrayList<Reservation>();
			
			while(rs.next()) {
				Reservation reservation = new Reservation(rs.getString(1), rs.getString(3), Integer.parseInt(rs.getString(2)), rs.getString(4), Integer.parseInt(rs.getString(5)));
				reservations.add(reservation);
			}
			
			conn.close();
			
			return reservations;
		} catch (Exception error) {
			System.out.println("An error occurred while getting sitter: " + error.toString());
			return null;
		}
	}
}
