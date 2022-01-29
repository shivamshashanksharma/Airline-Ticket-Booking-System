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


@WebServlet("/Validation")
public class Validation extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	
    	RequestDispatcher dispatcher=request.getRequestDispatcher("JSPloginPage.jsp");
		dispatcher.forward(request, response);
	}

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {

        String Username = request.getParameter("username");
        String Password = request.getParameter("password");
        
        airline airline = new airline();
        airline.setUsername(Username);
        airline.setPassword(Password);
        
        airlineDao airlineDao=new airlineDao();
        try {
			if(airlineDao.validate(airline))
			{
				HttpSession session = request.getSession(true);
				session.setAttribute("username", Username);
				 RequestDispatcher dispatcher=request.getRequestDispatcher("JSPhomePage.jsp");
					dispatcher.forward(request, response);
			}
			else
			{
				 RequestDispatcher dispatcher=request.getRequestDispatcher("JSPValidationFalse.jsp");
					dispatcher.forward(request, response);
			}
		} catch (ClassNotFoundException e1) {
			e1.printStackTrace();
		}
    }
    

}
