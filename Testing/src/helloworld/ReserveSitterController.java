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
import model.Pet;
import model.Reservation;
import model.Sitter;

/**
 * Servlet implementation class ReserveSitterController
 */
@WebServlet("/BookSitter")
public class ReserveSitterController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ReserveSitterController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// TODO Auto-generated method stub
		response.setContentType("text/html");       
		
		int sitterID = Integer.parseInt(request.getParameter("id"));
		
		DbManager manager = new DbManager();
		Sitter sitter = manager.getSitterByID(sitterID);
        
		if(UserManager.getInstance().getUsername() != null) {
			List<Pet> pets = manager.getPets(UserManager.getInstance().getUsername());
			request.setAttribute("sitter", sitter);
			request.setAttribute("pets", pets);
			request.getRequestDispatcher("reserveSitter.jsp").forward(request, response);
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
		String petName = request.getParameter("name");
		String reservationDate = request.getParameter("date");
		String userID = UserManager.getInstance().getUsername();
		int sitterID = Integer.parseInt(request.getParameter("id"));
		
		Reservation reservation = new Reservation(petName, userID, sitterID, reservationDate, 0);
		DbManager manager = new DbManager();
		int status = manager.saveReservation(reservation);
		
		request.setAttribute(status == 1 ? "success" : "error", "message");
		
		doGet(request, response);
	}

}
