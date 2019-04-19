package test.domain.billing;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Login
 */
@WebServlet("/BillingController")
public class BillingController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	public BillingController() {}
	
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String cardno = request.getParameter("cardno");
		String cardtype = request.getParameter("cardtype");
		String expiry = request.getParameter("expiry");
		String cvv = request.getParameter("cvv");
		Billing c = new Billing(cardno, cardtype,expiry,cvv);
		
		c.setCardNo(request.getParameter("cardno"));
		c.setCardType(request.getParameter("cardtype"));
		c.setExpiryDate(request.getParameter("expiry"));
		c.setCVV(request.getParameter("cvv"));
		System.out.println(c.getCardNo());
		Payment.enter(c);
		request.getRequestDispatcher("welcome.jsp").forward(request, response);
	}
	
}