package iec.database;

import java.util.Date;
import java.util.Vector;
import iec.data.User;
import iec.data.UserTest;
import iec.data.Test;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

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
	public boolean addUser(String userId)
	{
		try {
			ResultSet rs = sStatement.executeQuery("select 1+1 from dual");
		} catch (SQLException e) {
			e.printStackTrace();
		}
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
            sConnection = DriverManager.getConnection("jdbc:mysql://sql2.freesqldatabase.com/sql26269", "sql26269", "aZ7*cS2*");
            sConnection.setAutoCommit(true);
            sStatement = sConnection.createStatement(ResultSet.TYPE_SCROLL_SENSITIVE, ResultSet.CONCUR_UPDATABLE);
        } catch (Exception ex) {
            ex.printStackTrace();
        }
	}
	
	private Connection 	sConnection;
	
    private Statement 	sStatement;
    public static void main(String[] args) {
		new DatabaseManager().create();
	}
	
}
