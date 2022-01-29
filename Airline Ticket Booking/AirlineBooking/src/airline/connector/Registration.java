package airline.connector;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import airline.dao.airlineDao;
import airline.model.airline;


@WebServlet("/Registration")
public class Registration extends HttpServlet {
	private static final long serialVersionUID = 1L;

	private airlineDao AirlineDao;

    public void init() {
        AirlineDao = new airlineDao();
    }
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	RequestDispatcher dispatcher=request.getRequestDispatcher("JSPRegistrationPage.jsp");
		dispatcher.forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String Firstname = request.getParameter("firstname");
        String Middlename = request.getParameter("middlename");
        String Lastname = request.getParameter("lastname");
        String Date = request.getParameter("date_of_birth");
        String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        String Email = request.getParameter("email");
        String Contact = request.getParameter("contact");
        String Address = request.getParameter("address");
        
        int Num=Integer.parseInt(request.getParameter("book"));
        
        airline airline = new airline();
        airline.setFirstname(Firstname);
        airline.setMiddlename(Middlename);
        airline.setLastname(Lastname);
        airline.setDate_of_birth(Date);
        airline.setUsername(Username);
        airline.setPassword(Password);
        airline.setEmail(Email);
        airline.setContact(Contact);
        airline.setAddress(Address);
        
        try {
            AirlineDao.newRegistration(airline);
            HttpSession session=request.getSession();
			session.setAttribute("username", Username);
            RequestDispatcher dispatcher=request.getRequestDispatcher("JSPhomePage.jsp");
    		dispatcher.forward(request, response);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
