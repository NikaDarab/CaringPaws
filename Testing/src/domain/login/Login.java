package domain.login;

/**
 * 
 * @author mehra
 * This is the Customer before the validation.
 */
public class Login {
	private String username;
	private String password;
	private String name;
	
	public Login(String username, String pass, String name){
		this.username = username;
		this.password = pass;
		this.name = name;
	}
	
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
		return this.name;
	}
	public void setName(String name) {
		this.name = name;
	}

}
