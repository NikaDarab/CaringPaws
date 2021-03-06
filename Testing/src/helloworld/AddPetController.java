package helloworld;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.login.UserManager;
import model.Pet;

/**
 * Servlet implementation class AddPetPage
 */
@WebServlet("/AddPetPage")
public class AddPetController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPetController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");         
        
		if(UserManager.getInstance().getUsername() != null) {
			request.getRequestDispatcher("addPet.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMes", "You have to be logged in to do that!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	
	// POST
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String petName = request.getParameter("petName");
		String type = request.getParameter("type");
		String breed = request.getParameter("breed");
		String DOB = request.getParameter("birthday");
		int weight = Integer.parseInt(request.getParameter("weight"));
		String color = request.getParameter("color");
		boolean spayedOrNeutered = Boolean.parseBoolean(request.getParameter("spay"));
		String nature = request.getParameter("nature");
		
		Pet newPet = new Pet(petName, type, breed, DOB, weight, color, nature, spayedOrNeutered, 0, UserManager.getInstance().getUsername());
		
		PetFormToSQL formToSQL = new PetFormToSQL();
		int status = formToSQL.sendFormToSQL(newPet);
		
		System.out.println(status);
		
		request.setAttribute(status == 1 ? "success" : "error", "message");
		
		this.doGet(request, response);			
	}


}
