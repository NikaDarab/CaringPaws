package model;
/**
 * 
 * @author mehra
 *
 */
public class Customer {

	private String username;
	private String password;
	private String name;
	private int id;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public void setID(int id) {
		this.id = id;
	}
	public int getID() {
		return this.id;
	}

	
}

