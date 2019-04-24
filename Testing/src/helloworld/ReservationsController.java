package helloworld;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import db.DbManager;
import domain.login.UserManager;
import model.Reservation;
import model.Review;
import model.Sitter;

/**
 * Servlet implementation class ReservationsController
 */
@WebServlet("/Reservations")
public class ReservationsController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReservationsController() {
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
			DbManager manager = new DbManager();
			List<Reservation> reservations = manager.getReservations(UserManager.getInstance().getUsername());
			
			System.out.println("Length: " + reservations.size());
	        
			request.setAttribute("reservations", reservations);
			request.setAttribute("user", UserManager.getInstance());
			request.getRequestDispatcher("activeReservations.jsp").forward(request, response);
		} else {
			request.setAttribute("errorMes", "You have to be logged in to do that!");
			request.getRequestDispatcher("login.jsp").forward(request, response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
