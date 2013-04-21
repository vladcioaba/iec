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

public class DatabaseManager {

	// **************************************************************************************************************************
	// STATIC MEMBERS
	// **************************************************************************************************************************
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
	public User addUser(String name, String password)
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
		
		try
		{
			 PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
			 preparedStmt.setString (1, name);
	 		 preparedStmt.setString (2, md5pass);
	 		 preparedStmt.setDate(3, (java.sql.Date) date);

	 		 // execute the preparedstatement
	 		 preparedStmt.execute();
		
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
		return null;
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
	
	// **************************************************************************************************************************
	// PRIVATE METHODS
	// **************************************************************************************************************************
	private DatabaseManager()
	{
		
	}
	
	private void create()
	{
	    try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            mConnection = DriverManager.getConnection("jdbc:mysql://sql2.freesqldatabase.com/sql26269", "sql26269", "aZ7*cS2*");
            mConnection.setAutoCommit(true);
            mStatement = mConnection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}
	
	private String convertToMd5(String str)
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
        	md.update((byte) in.charAt(nread));
        };
        byte[] mdbytes = md.digest();
 
        //convert the byte to hex format method 1
        StringBuffer sb = new StringBuffer();
        for (int i = 0; i < mdbytes.length; i++) {
          sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
        }
		return sb.toString();
	}
	
	private Connection 	mConnection;
	
    private Statement 	mStatement;
    
    public static void main(String[] args) {
    	DatabaseManager dm = new DatabaseManager();
    	dm.create();
    	

		User u = dm.addUser("pulica", "pulica");
   }
	
}
