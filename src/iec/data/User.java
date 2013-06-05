package iec.data;

import java.sql.Date;

public class User {

	public User(int userId, String userName, Date userLastLogin, int isAdmin, int currentLesson) {
		mUserId = userId;
		mUserName = userName;
		mUserLastLogin = userLastLogin;
		mUserIsAdmin = isAdmin;
		mCurrentLesson = currentLesson;
	}

	public int getUserId() {
		return mUserId;
	}

	public String getUserName() {
		return mUserName;
	}

	public Date getUserLastLogin() {
		return mUserLastLogin;
	}

	public int getmUserIsAdmin() {
		return mUserIsAdmin;
	}

	public int getmCurrentLessonn() {
		return mCurrentLesson;
	}

	private int mUserId;
	private String mUserName;
	private Date mUserLastLogin;
	private int mUserIsAdmin;
	private int mCurrentLesson;
}
