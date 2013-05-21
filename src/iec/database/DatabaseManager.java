package iec.database;

import java.sql.Date;
import java.util.Calendar;
import java.util.Vector;
import iec.data.User;
import iec.data.UserTest;
import iec.data.Test;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import com.mysql.jdbc.PreparedStatement;
import com.mysql.jdbc.ResultSetRow;

public class DatabaseManager {
	
	// **************************************************************************************************************************
	// STATIC MEMBERS
	// **************************************************************************************************************************
	
	public static void main(String[] args) {
		DatabaseManager dm = new DatabaseManager();
		dm.create();
		
//		User u1 = dm.addUser("pulica", "pulica");
//		dm.autenticateUser("pulica", "pulica");
//		
//		dm.setTestComplete(u1.getUserId(), 2, 1, new Date(1), new Date(2));
//		// dm.setTestComplete(2, 2, 1, new Date(1), new Date(2));
//		// dm.setTestComplete(2, 2, 1, new Date(1), new Date(2));
//		
//		Vector<UserTest> vec = dm.getUserTestHistory(u1.getUserId());
//		vec.size();
		
		//dm.addUser("admin", "admin");
		
		Vector<Test>tests = dm.getTests();
		tests.size();
		
		// dm.removeUser(u1.getUserId());
	}
	
	private static DatabaseManager sInstance;
	
	public static DatabaseManager getInstance()
	{
		if (sInstance == null)
		{
			synchronized(DatabaseManager.class) {
				sInstance = new DatabaseManager();
				sInstance.create();
			}
		}
		return sInstance;
	}
	
	// **************************************************************************************************************************
	// USER METHODS
	// **************************************************************************************************************************
	public static synchronized User addUser(String name, String password)
	{
		if (name == null ||
			password == null)
		{
			return null;
		}
		
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		String md5pass =  convertToMd5(password);
		String query = " insert into users (name, password, last_login)"
        	 				+ " values (?, ?, ?)";
		
		int userId = -1;
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
			 preparedStmt.setString(1, name);
	 		 preparedStmt.setString(2, md5pass);
	 		 preparedStmt.setDate(3, (java.sql.Date) date);

	 		 // execute the preparedstatement
	 		 preparedStmt.executeUpdate();
	 		 ResultSet result = preparedStmt.getGeneratedKeys();
	 		 while (result.next())
	 		 {
	 			 userId = result.getInt(1);
	 		 }
	 		 result.close();
	 		 preparedStmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}
		
		User ret = new User(userId, name, date);
		return ret;
	}
	
	public static synchronized boolean removeUser(int userId)
	{
		if (userId <= 0)
		{
			return false;
		}
		
		String query = "delete from users where userid = ?";
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
			 preparedStmt.setInt(1, userId);
		
			 // execute the preparedstatement
			 preparedStmt.execute();
			 return true;
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return false;
	}
	
	public static synchronized User autenticateUser(String name, String password)
	{
		if (name == null ||
			password == null)
		{
			return null;
		}
		
		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		String md5pass =  convertToMd5(password);
		int userId = -1;		
		
		try
		{
			String select_query = "select userid from users where name = ? and password = ?";
			PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(select_query);
			preparedStmt.setString(1, name);
	 		preparedStmt.setString(2, md5pass);

	 		// execute the preparedstatement
	 		ResultSet result = preparedStmt.executeQuery();
			while (result.next())
			{
				userId = result.getInt(1);
				break;
			}
			result.close();
			preparedStmt.close();
			
         	String update_query = "update users set last_login = ?  where userid = ?";
         	preparedStmt = (PreparedStatement) mConnection.prepareStatement(update_query);
	 		preparedStmt.setDate(1, (java.sql.Date) date);
	 		preparedStmt.setInt(2, userId);
	 		preparedStmt.executeUpdate();
	 		result.close();
			preparedStmt.close();
		}
		catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		}
		
		User ret = new User(userId, name, date);
		return ret;
	}
	
	// **************************************************************************************************************************
	// USER HISTORY METHODS
	// **************************************************************************************************************************
	public static synchronized Vector<UserTest> getUserTestHistory(int userId)
	{
		if (userId <= 0)
		{
			return null;
		}
		
		String query = "select * from history where userid = ?";
		Vector<UserTest> ret = new Vector<UserTest>();
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
			 preparedStmt.setInt(1, userId);
 			 // execute the preparedstatement
			 preparedStmt.execute();
			 
			 ResultSet result = preparedStmt.getResultSet();
 			 
			 while (result.next())
			 {
				 int id = result.getInt("id");
				 int userId2 = result.getInt("userid");
				 int testId = result.getInt("testid");
				 int answer = result.getInt("answer");
				 Date date_start = result.getDate("date_start");
				 Date date_end = result.getDate("date_end");
				 
				 ret.addElement(new UserTest(id, userId2, testId, answer, date_start, date_end));
			 }
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		}
		
		return ret;
	}
	
	public static synchronized Vector<Test> getTests()
	{
		String query = "select * from teste";
		Vector<Test> ret = new Vector<Test>();
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
 			 // execute the preparedstatement
			 ResultSet result = preparedStmt.executeQuery();
			 
			 while (result.next())
			 {
				 int testId = result.getInt("testid");
				 int testType = result.getInt("type");
				 int testDifficulty = result.getInt("difficulty");
				 String testBody = result.getString("body");
				 String testAnswer = result.getString("answere");
				 int correct = result.getInt("correct");
				 
				 ret.addElement(new Test(testId, testType, testDifficulty, testBody, testAnswer, correct));
			 }
		} catch (SQLException e)
		{
			e.printStackTrace();
			return null;
		}
		
		return ret;
	}
	
	public static synchronized void setTestComplete(int userId, int testId, int answer, Date start, Date end)
	{
		if (userId <= 0 || testId <= 0 || start == null || end == null)
		{
			return;
		}
		
		String query = " insert into history (userid, testid, answer, date_start, date_end)"
							+ " values (?, ?, ?, ?, ?)";
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
 	 		 // execute the preparedstatement
			 preparedStmt.setInt(1, userId);
			 preparedStmt.setInt(2, testId);
			 preparedStmt.setInt(3, answer);
			 preparedStmt.setDate(4, start);
			 preparedStmt.setDate(5, end);
	 		 preparedStmt.execute();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	// **************************************************************************************************************************
	// PRIVATE METHODS
	// **************************************************************************************************************************
	private DatabaseManager()
	{
		
	}
	
	private static synchronized void create()
	{
	    try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            mConnection = DriverManager.getConnection("jdbc:mysql://sql2.freesqldatabase.com/sql26269", "sql26269", "aZ7*cS2*");
            mConnection.setAutoCommit(true);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}
	
	private static synchronized String convertToMd5(String str)
	{
		MessageDigest md = null;
    	try {
    		md = MessageDigest.getInstance("SHA-1");
    	} catch (NoSuchAlgorithmException e)
    	{
    		return null;
    	}
    	
		StringBuffer in = new StringBuffer(str);
		
		int nread = 0; 
        while (nread < in.length())
        {
        	md.update((byte) in.charAt(nread++));
        };
        byte[] mdbytes = md.digest();
 
        //convert the byte to hex format method 1
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < mdbytes.length; i++) {
          sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
        }
		return sb.toString();
	}
	
	private static Connection 	mConnection;
	
}
