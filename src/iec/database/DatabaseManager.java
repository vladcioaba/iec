package iec.database;

import iec.data.User;

import java.util.Date;
import java.util.Vector;
import iec.data.User;
import iec.data.UserTest;
import iec.data.Test;

public class DatabaseManager {

	
	// **************************************************************************************************************************
	// USER METHODS
	// **************************************************************************************************************************
	public boolean addUser(String userId)
	{
		return false;
	}
	
	public boolean removeUser(String userId)
	{
		return false;
	}
	
	public User autenticateUser(String userName, String password)
	{
		return null;
	}
	
	public Date getUserLastTimeAutenticationDate()
	{
		return null;
	}
	
	// **************************************************************************************************************************
	// USER HISTORY METHODS
	// **************************************************************************************************************************
	public Vector<UserTest> getUserTestHistory(String userId)
	{
		return null;
	}
	
	public Vector<Test> getTests()
	{
		return null;
	}
	
	private void connect()
	{
		String connectionURL = "jdbc:postgresql://localhost:5432/movies;user=java;password=samples";
		// Change the connection string according to your db, ip, username and password
		 
		try {
		 
		    // Load the Driver class. 
		    Class.forName("org.postgresql.Driver");
		    // If you are using any other database then load the right driver here.
		 
		    //Create the connection using the static getConnection method
		    Connection con = DriverManager.getConnection (connectionURL);
		 
		    //Create a Statement class to execute the SQL statement
		    Statement stmt = con.createStatement();
		 
		    //Execute the SQL statement and get the results in a Resultset
		    ResultSet rs = stmt.executeQuery("select moviename, releasedate from movies");
		 
		    // Iterate through the ResultSet, displaying two values
		    // for each row using the getString method
		 
		    while (rs.next())
		        System.out.println("Name= " + rs.getString("moviename") + " Date= " + rs.getString("releasedate"));
		}
		catch (SQLException e) {
		    e.printStackTrace();
		}
		catch (Exception e) {
		    e.printStackTrace();
		}
		finally {
		    // Close the connection
		    con.close();
		}
	}

	
	
}
