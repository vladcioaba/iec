package iec.data;

import java.sql.Date;

public class User {
	
	public User(int userId, String userName, Date userLastLogin)
	{
		mUserId = userId;
		mUserName = userName;
		mUserLastLogin = userLastLogin;
	}
	
	public int getUserId()
	{
		return mUserId;
	}
	
	public String getUserName()
	{
		return mUserName;
	}
	
	public Date getUserLastLogin()
	{
		return mUserLastLogin;
	}
	
	private int 		mUserId;
	private String		mUserName;
	private Date		mUserLastLogin;	
}
