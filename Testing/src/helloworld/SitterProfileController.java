package helloworld;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbManager;
import model.*;

/**
 * Servlet implementation class SitterProfileController
 */
@WebServlet("/Sitter")
public class SitterProfileController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SitterProfileController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.setContentType("text/html");
		
		DbManager manager = new DbManager();
		int id = Integer.parseInt(request.getParameter("id"));
		Sitter sitter = manager.getSitterByID(id);
		List<Review> reviews = manager.getReviewsOnSitter(id);
        
		request.setAttribute("sitter", sitter);
		request.setAttribute("reviews", reviews);
		request.getRequestDispatcher("sitterProfile.jsp").forward(request, response);
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
