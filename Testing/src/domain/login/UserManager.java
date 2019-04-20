package domain.login;

import model.Customer;

public class UserManager {
	private static Customer customer = null;
	
	static void setCustomer(Customer customer) {
		UserManager.customer = customer;
	}
	
	public static Customer getInstance() {
		if(customer == null) {
			UserManager.customer = new Customer();
		}
		
		return customer;
	}
}
