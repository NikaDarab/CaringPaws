package helloworld;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbManager;
import model.Pet;
import model.*;

/**
 * Servlet implementation class SearchPets
 */
@WebServlet("/SearchSitters")
public class SearchSittersController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SearchSittersController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
        
		request.getRequestDispatcher("searchSitters.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String name = request.getParameter("name");
		String zip = request.getParameter("zipCode");
		String rating = request.getParameter("rating") == "" ? "0" : request.getParameter("rating");
		
		System.out.println(name);
		System.out.println(zip);
		System.out.println(rating);

		DbManager manager = new DbManager();
		List<Sitter> sitters = manager.getSitters(name, zip, rating);
		
		if(sitters.size() == 0) {
			request.setAttribute("noSitters", "Error. No sitters found. Please broaden search criteria.");
		}
		request.setAttribute("sitters", sitters);
		
		this.doGet(request, response);			
	}

}
