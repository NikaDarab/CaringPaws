package model;


public class Pet {
	private String petName;
	private String type;
	private String breed;
	private String dob;
	private int weight;
	private String color;
	private boolean spayOrNeuter;
	private String nature;
	private String ownerID;
	private int ID;

	public Pet(String name, String type, String breed, String dob, int weight, String color, String nature, boolean spay, int ID, String ownerID) {
		this.petName = name;
		this.type = type;
		this.breed = breed;
		this.dob = dob;
		this.weight = weight;
		this.color = color;
		this.spayOrNeuter = spay;
		this.nature = nature;
		this.ownerID = ownerID;
	}
	
	public String getName(){
		return petName;
	}
	
	public String getType() {
		return type;
	}
	
	public String getBreed() {
		return breed;
	}
	
	public String getDOB() {
		return dob;
	}
	
	public int getWeight() {
		return weight;
	}
	
	public String getColor() {
		return color;
	}
	
	public boolean getSpayOrNeuter() {
		return spayOrNeuter;
	}
	
	public String getNature() {
		return nature;
	}
	
	public String getOwnerID() {
		return this.ownerID;
	}
	
	public int getID() {
		if(this.ID == 0) {
			return (int) Math.random() * Integer.MAX_VALUE;
		} else {
			return this.ID;
		}
	}
	
	public String toString() {
		return this.petName;
	}
}

