package helloworld;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import db.DbManager;
import db.MyDB;
import model.Pet;

public class PetFormToSQL {
	
	static Connection conn;
	static PreparedStatement ps;
	DbManager db = new DbManager();
	
	public int sendFormToSQL(Pet pet) {
		int status = 0;
		try{
			conn = db.getConnection();
			ps = conn.prepareStatement("insert into pets (name, breed, species, birthday, approximateWeightInPounds, primaryColor, nature, isSpayedAndNeutered, id, ownerID) values(?,?,?,?,?,?,?,?,?,?)");
			
			ps.setString(1, pet.getName());
			ps.setString(2, pet.getType());
			ps.setString(3, pet.getBreed());
			ps.setString(4, pet.getDOB());
			ps.setInt(5, pet.getWeight());
			ps.setString(6, pet.getColor());
			ps.setString(7, pet.getNature());
			ps.setBoolean(8, pet.getSpayOrNeuter());
			ps.setInt(9, pet.getID());
			ps.setString(10, pet.getOwnerID());
			
			status = ps.executeUpdate();
			
			conn.close();
		}catch(Exception e){
			System.out.println(e);
		}
		return status;
	}

}
