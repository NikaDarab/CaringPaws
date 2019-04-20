package model;

public class Sitter {
	private double averageRating;
	private String email;
	private String phoneNumber;
	private int zipCode;
	private String password;
	private String birthday;
	private String personalDescription;
	private int ID;
	private String name;
	
	public Sitter(double averageRating, String email, String phone, int zip, String pass, String birth, String personalDesc, int id, String name) {
		this.averageRating = averageRating;
		this.email = email;
		this.phoneNumber = phone;
		this.zipCode = zip;
		this.password = pass;
		this.birthday = birth;
		this.personalDescription = personalDesc;
		this.ID = id;
		this.name = name;
	}
	
	public double getAverageRating() {
		return this.averageRating;
	}
	
	public String getEmail() {
		return this.email;
	}
	
	public String getPhoneNumber() {
		return this.phoneNumber;
	}
	
	public double getZipCode() {
		return this.zipCode;
	}
	
	public String getPassword() {
		return this.password;
	}
	
	public String getBirthday() {
		return this.birthday;
	}
	
	public String getPersonalDescription() {
		return this.personalDescription;
	}
	
	public int getID() {
		return this.ID;
	}
	
	public String getName() {
		return this.name;
	}
	
	public String toString() {
		return "" + this.averageRating + " " + this.email + " " + this.phoneNumber + " " + this.zipCode + " " + this.password + " " + this.birthday + " " + this.personalDescription + " " + this.ID + " " + this.name;
	}
}
