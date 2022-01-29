package airline.connector;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import airline.dao.airlineDao;
import airline.model.airline;


@WebServlet("/AirlinesDetails")
public class AirlinesDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		RequestDispatcher dispatcher = request.getRequestDispatcher("JSPsearchFlight.jsp");
		dispatcher.forward(request, response);		
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String start_from=request.getParameter("start_from");
		String dest=request.getParameter("dest");
		airlineDao airlinedao=new airlineDao();
		String status;
		try {
			List<airline> listAirline=airlinedao.selectAllUsers(start_from,dest);
			if(!listAirline.isEmpty())
			{
				status="true";
			request.setAttribute("check", status);
			request.setAttribute("listFlight", listAirline);
			System.out.println(listAirline.get(3));
			HttpSession session=request.getSession(true);
			session.setAttribute("start_from", start_from);
			session.setAttribute("dest", dest);
			RequestDispatcher dispatcher = request.getRequestDispatcher("JSPFlightDetails.jsp");
			dispatcher.forward(request, response);
			
			
			}
			else
			{
				RequestDispatcher dispatcher = request.getRequestDispatcher("JSPFlightDetails.jsp");
				dispatcher.forward(request, response);
			}
		}catch(Exception e)
		{
			e.printStackTrace();
		}
		
	}

}