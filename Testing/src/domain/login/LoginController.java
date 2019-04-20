package domain.login;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Customer;
import model.Login;

@WebServlet("/LoginController")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public LoginController() {
    	super();
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html"); 
		
		if(UserManager.getInstance().getUsername() == null) {
			request.getRequestDispatcher("login.jsp").forward(request, response);
		} else {
			request.setAttribute("message", "You are already logged in!");
			request.getRequestDispatcher("home.jsp").forward(request, response);
		}
	}
    
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		CustomerDao customerDao = new CustomerDaoImpl();
		
		String username = request.getParameter("username");
		String pass = request.getParameter("password");
		String name = request.getParameter("name");
		String submitType = request.getParameter("submit");
		Login login = new Login(username, pass, name);
		Customer c = customerDao.validateCustomer(login);
		
		System.out.println("========================");
		System.out.println(username);
		System.out.println(pass);
		System.out.println(submitType);
		System.out.println(c);
		System.out.println(c.getName());
		System.out.println(c.getPassword());
		System.out.println(c.getUsername());
		System.out.println("========================");
		
		if(submitType.equals("login") && c != null && c.getUsername() != null) {
			UserManager.setCustomer(c);
			request.getRequestDispatcher("home.jsp").forward(request, response);
		} else if(submitType.equals("register")) {
			c.setName(request.getParameter("name"));
			c.setUsername(request.getParameter("username"));
			c.setPassword(request.getParameter("password"));
			customerDao.register(c);
			request.setAttribute("successMessage", "Registration done, please login!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
			
		} else {
			System.out.println("USER NOT FOUND");
			request.setAttribute("error", "Data Not Found! Please register!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}

	}

}
