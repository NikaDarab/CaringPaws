package model;

public class Reservation {
	private String petName;
	private String date;
	private String customerID;
	private int sitterID;
	private int ID;
	
	public Reservation(String petName, String customerID, int sitterID, String date, int ID) {
		this.petName = petName;
		this.customerID = customerID;
		this.sitterID = sitterID;
		this.date = date;
		this.ID = ID;
	}
	
	public String getPetName() {
		return petName;
	}
	
	public void setPetName(String petName) {
		this.petName = petName;
	}
	
	public String getCustomerID() {
		return customerID;
	}
	
	public void setCustomerID(String customerID) {
		this.customerID = customerID;
	}
	
	public int getSitterID() {
		return sitterID;
	}
	
	public void setSitterID(int sitterID) {
		this.sitterID = sitterID;
	}

	public String getDate() {
		return date;
	}

	public void setDate(String date) {
		this.date = date;
	}
}
