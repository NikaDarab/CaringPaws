package model;

public class Review {
	private int rating;
	private String comment;
	private int ownerID;
	private int id;
	private String name;
	
	public Review(int rating, String comment, int ownerID, int id, String name) {
		this.rating = rating;
		this.comment = comment;
		this.ownerID = ownerID;
		this.id = id;
		this.name = name;
	}
	
	public int getRating() {
		return this.rating;
	}
	
	public String getComment() {
		return this.comment;
	}
	
	public int getOwnerID() {
		return this.ownerID;
	}
	
	public int getId() {
		return this.id;
	}
	
	public String getName() {
		return this.name;
	}
}
