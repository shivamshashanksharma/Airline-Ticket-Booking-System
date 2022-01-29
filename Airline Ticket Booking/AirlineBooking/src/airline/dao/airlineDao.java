package airline.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import airline.model.airline;

public class airlineDao {
	
	// REGISTRATION
	public int newRegistration(airline airline) throws ClassNotFoundException{
		String INSERT_USERS_SQL = "INSERT INTO customerDetails (firstname,middlename,lastname,date_of_birth ,username, password,email,contact,address) VALUES (?,?,?,?,?,?,?,?,?);";
		
		int result = 0;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/db1?useSSL=false", "root", "Shashank007@");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
        	
        	preparedStatement.setString(1, airline.getFirstname());
        	preparedStatement.setString(2, airline.getMiddlename());
        	preparedStatement.setString(3, airline.getLastname());
        	preparedStatement.setString(4, airline.getDate_of_birth());
            preparedStatement.setString(5, airline.getUsername());
            preparedStatement.setString(6, airline.getPassword());
        	preparedStatement.setString(7, airline.getEmail());
            preparedStatement.setString(8, airline.getContact());
            preparedStatement.setString(9, airline.getAddress());
            
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
	
	// BOOKING
	public int newBooking(airline airline) throws ClassNotFoundException{
		
		String INSERT_CUSTOMER_SQL = "INSERT INTO bookingDetails (fullname, email, contact, address, date_of_journey, from_location,final_location ) VALUES (?,?,?,?,?,?,?);";
		
		int result = 0;

        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/db1?useSSL=false", "root", "Shashank007@");

            // Step 2:Create a statement using connection object
            PreparedStatement preparedStatement = connection.prepareStatement(INSERT_CUSTOMER_SQL)) {
            preparedStatement.setString(1, airline.getFullname());
            preparedStatement.setString(2, airline.getEmail());
            preparedStatement.setString(3, airline.getContact());
            preparedStatement.setString(4, airline.getAddress());
            preparedStatement.setString(5, airline.getDate_of_journey());
            preparedStatement.setString(6, airline.getFrom_location());
            preparedStatement.setString(7, airline.getFinal_location());
            
            System.out.println(preparedStatement);
            // Step 3: Execute the query or update query
            result = preparedStatement.executeUpdate();

        } catch (SQLException e) {
            // process sql exception
            printSQLException(e);
        }
        return result;
    }
	
	// VALIDATION
	public boolean validate(airline airline) throws ClassNotFoundException
    {
		boolean status=false;
		String sql="SELECT * FROM customerDetails WHERE username=? and password=?";
		
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/db1?useSSL=false", "root", "Shashank007@");
        		PreparedStatement ps=connection.prepareStatement(sql);)
        		{
        			ps.setString(1, airline.getUsername());
        			ps.setString(2, airline.getPassword());
        			
        			ResultSet rs=ps.executeQuery();
        			status=rs.next();
        		}catch (SQLException e)
        		{
        			e.printStackTrace();
        		}
    	return status;
    }
	
	// PRINT ALL
	public List<airline> selectAllUsers(String start_from1, String dest1) throws ClassNotFoundException
	{
		List<airline> flight=new ArrayList<>();
		
		String sql="SELECT * FROM airlinesDetails WHERE start_from=? AND dest=?";
		
        Class.forName("com.mysql.cj.jdbc.Driver");

        try (Connection connection = DriverManager
            .getConnection("jdbc:mysql://localhost:3306/db1?useSSL=false", "root", "Shashank007@");
        		PreparedStatement ps=connection.prepareStatement(sql);)
        		{			
        	
        	ps.setString(1, start_from1);
			ps.setString(2, dest1);
        	
			ResultSet rs=ps.executeQuery();
			
			while(rs.next())
			{
				int num=rs.getInt("num");
				String airlines=rs.getString("airlines");
				String start_from=rs.getString("start_from");
				String dest=rs.getString("dest");
				String time=rs.getString("time");
				flight.add(new airline(num,airlines,start_from,dest,time));
			}
		}catch(SQLException e)
		{
			e.printStackTrace();
		}
		return flight;
	}
	
    private void printSQLException(SQLException ex) {
        for (Throwable e: ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }

}
