package airline.connector;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import airline.dao.airlineDao;
import airline.model.airline;


@WebServlet("/Booking")
public class Booking extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	private airlineDao AirlineDao;
	
    public void init() {
        AirlineDao = new airlineDao();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	         
    	RequestDispatcher dispatcher=request.getRequestDispatcher("JSPBookingPage.jsp");
		dispatcher.forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String fullname = request.getParameter("fullname");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String Date = request.getParameter("date_of_journey");
        String from_location = request.getParameter("from_location");
        String final_location = request.getParameter("final_location");
        
        
        airline airline = new airline();
        airline.setFullname(fullname);
        airline.setEmail(email);
        airline.setContact(contact);
        airline.setAddress(address);
        airline.setDate_of_journey(Date);
        airline.setFrom_location(from_location);
        airline.setFinal_location(final_location);

        try {
        	/*HttpSession session=request.getSession();*/
            AirlineDao.newBooking(airline);
            request.setAttribute("from_location", from_location);
            RequestDispatcher dispatcher=request.getRequestDispatcher("JSPSuccessfullyBooked.jsp");
    		dispatcher.forward(request, response);
        } catch (Exception e) {
            // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }

}
