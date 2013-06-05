package iec.database;

import java.sql.Date;
import java.util.ArrayList;
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
import java.sql.PreparedStatement;

public class DatabaseManager {

	// **************************************************************************************************************************
	// STATIC MEMBERS
	// **************************************************************************************************************************

	private static DatabaseManager sInstance;

	public static DatabaseManager getInstance() {
		if (sInstance == null) {
			synchronized (DatabaseManager.class) {
				sInstance = new DatabaseManager();
				sInstance.create();
			}
		}
		return sInstance;
	}

	// **************************************************************************************************************************
	// USER METHODS
	// **************************************************************************************************************************
	public static synchronized User addUser(String name, String password) {
		if (name == null || password == null) {
			return null;
		}

		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		String md5pass = convertToMd5(password);
		String query = " insert into users (name, password, last_login)" + " values (?, ?, ?)";

		int userId = -1;
		try {
			PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query,
					Statement.RETURN_GENERATED_KEYS);
			preparedStmt.setString(1, name);
			preparedStmt.setString(2, md5pass);
			preparedStmt.setDate(3, (java.sql.Date) date);

			// execute the preparedstatement
			preparedStmt.executeUpdate();
			ResultSet result = preparedStmt.getGeneratedKeys();
			while (result.next()) {
				userId = result.getInt(1);
			}
			result.close();
			preparedStmt.close();
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		User ret = new User(userId, name, date, 0, 0);
		return ret;
	}

	public static synchronized boolean removeUser(int userId) {
		if (userId <= 0) {
			return false;
		}

		String query = "delete from users where userid = ?";
		try {
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

	public static synchronized User autenticateUser(String name, String password) {
		if (name == null || password == null) {
			return null;
		}

		Date date = new Date(Calendar.getInstance().getTimeInMillis());
		String md5pass = convertToMd5(password);
		int userId = -1;
		int isAdmin = 0;
		int currentLesson = 0;
		try {
			String select_query = "select userid, isAdmin, currentLesson from users where name = ? and password = ?";
			PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(select_query);
			preparedStmt.setString(1, name);
			preparedStmt.setString(2, md5pass);

			// execute the preparedstatement
			ResultSet result = preparedStmt.executeQuery();
			while (result.next()) {
				userId = result.getInt(1);
				isAdmin = result.getInt("isAdmin");
				currentLesson = result.getInt("currentLesson");
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
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		User ret = new User(userId, name, date, isAdmin, currentLesson);
		return ret;
	}

	// **************************************************************************************************************************
	// USER HISTORY METHODS
	// **************************************************************************************************************************
	public static synchronized Vector<UserTest> getUserTestHistory(int userId) {
		if (userId <= 0) {
			return null;
		}

		String query = "select * from history where userid = ?";
		Vector<UserTest> ret = new Vector<UserTest>();
		try {
			PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
			preparedStmt.setInt(1, userId);
			// execute the preparedstatement
			preparedStmt.execute();

			ResultSet result = preparedStmt.getResultSet();

			while (result.next()) {
				int id = result.getInt("id");
				int userId2 = result.getInt("userid");
				int testId = result.getInt("testid");
				int answer = result.getInt("answer");
				Date date_start = result.getDate("date_start");
				Date date_end = result.getDate("date_end");

				ret.addElement(new UserTest(id, userId2, testId, answer, date_start, date_end));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		return ret;
	}

	public static synchronized Vector<Test> getTests() {
		String query = "select * from teste";
		Vector<Test> ret = new Vector<Test>();
		try {
			PreparedStatement preparedStmt = (PreparedStatement) mConnection.prepareStatement(query);
			// execute the preparedstatement
			ResultSet result = preparedStmt.executeQuery();

			while (result.next()) {
				int testId = result.getInt("testid");
				int testType = result.getInt("type");
				int testLessonNr = result.getInt("lesson_nr");
				String testBody = result.getString("body");
				String testAnswer = result.getString("answere");
				int correct = result.getInt("correct");
				int difficulty = result.getInt("difficulty");

				ret.addElement(new Test(testId, testType, testLessonNr, testBody, testAnswer, correct, difficulty));
			}
		} catch (SQLException e) {
			e.printStackTrace();
			return null;
		}

		return ret;
	}

	public static synchronized void setTestComplete(int userId, int testId, int answer, Date start, Date end) {
		if (userId <= 0 || testId <= 0 || start == null || end == null) {
			return;
		}

		String query = " insert into history (userid, testid, answer, date_start, date_end)"
				+ " values (?, ?, ?, ?, ?)";
		try {
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
	private DatabaseManager() {

	}

	private static synchronized void create() {
		try {
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			mConnection = DriverManager.getConnection("jdbc:mysql://sql2.freesqldatabase.com/sql26269", "sql26269",
					"aZ7*cS2*");
			mConnection.setAutoCommit(true);
		} catch (Exception ex) {
			ex.printStackTrace();
		}
	}

	private static synchronized String convertToMd5(String str) {
		MessageDigest md = null;
		try {
			md = MessageDigest.getInstance("SHA-1");
		} catch (NoSuchAlgorithmException e) {
			return null;
		}

		StringBuffer in = new StringBuffer(str);

		int nread = 0;
		while (nread < in.length()) {
			md.update((byte) in.charAt(nread++));
		}
		;
		byte[] mdbytes = md.digest();

		// convert the byte to hex format method 1
		StringBuffer sb = new StringBuffer();
		for (int i = 0; i < mdbytes.length; i++) {
			sb.append(Integer.toString((mdbytes[i] & 0xff) + 0x100, 16).substring(1));
		}
		return sb.toString();
	}

	public static synchronized boolean isFirstTime(int userid) {
		ResultSet rs;
		try {
			PreparedStatement stmt = mConnection.prepareStatement("select isFirstTime from users where userid=?");
			stmt.setInt(1, userid);
			rs = stmt.executeQuery();
			rs.next();
			return (rs.getInt("isFirstTime") == 1) ? true : false;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public static synchronized ArrayList<Test> getFirstTest() {
		ArrayList<Test> list = new ArrayList<Test>();
		ArrayList<Test> haha = new ArrayList<Test>();
		int easy = 0, intermediate = 0, hard = 0;
		try {
			PreparedStatement stmt = mConnection.prepareStatement("select * from teste");
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Test test = new Test(rs.getInt("testid"), rs.getInt("type"), rs.getInt("lesson_nr"),
						rs.getString("body"), rs.getString("answere"), rs.getInt("correct"), rs.getInt("difficulty"));
				list.add(test);
			}
			while (haha.size() < 9) {
				int i = (int) (Math.random() * list.size());
				if (!haha.contains(list.get(i))) {
					if ((list.get(i).getTestLessonNr() == 1 || list.get(i).getTestLessonNr() == 2) && easy < 3) {
						haha.add(list.get(i));
					}
				}
				if (!haha.contains(list.get(i))) {
					if ((list.get(i).getTestLessonNr() == 3 || list.get(i).getTestLessonNr() == 4) && intermediate < 3) {
						haha.add(list.get(i));
					}
				}
				if (!haha.contains(list.get(i))) {
					if ((list.get(i).getTestLessonNr() == 5 || list.get(i).getTestLessonNr() == 6) && hard < 3) {
						haha.add(list.get(i));
					}
				}
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return haha;
	}

	public static synchronized ArrayList<Test> getTest(int noLesson) {
		ArrayList<Test> list = new ArrayList<Test>();
		try {
			PreparedStatement stmt = mConnection
					.prepareStatement("select * from teste where lesson_nr=? order by rand() limit ?");
			stmt.setInt(1, noLesson);
			if (noLesson <= 2) {
				stmt.setInt(2, 5);
			} else {
				if (noLesson <= 4) {
					stmt.setInt(2, 7);
				} else {
					stmt.setInt(2, 9);
				}
			}
			ResultSet rs = stmt.executeQuery();
			while (rs.next()) {
				Test test = new Test(rs.getInt("testid"), rs.getInt("type"), rs.getInt("lesson_nr"),
						rs.getString("body"), rs.getString("answere"), rs.getInt("correct"), rs.getInt("difficulty"));
				list.add(test);
			}

		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public static synchronized boolean setCurrentLesson(int userID, int noLesson) {
		try {
			PreparedStatement stmt = mConnection
					.prepareStatement("update users set currentLesson = ?  where userid = ?");
			stmt.setInt(1, noLesson);
			stmt.setInt(2, userID);
			stmt.execute();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	public static synchronized boolean setIsNotFirstTime(int userID) {
		try {
			PreparedStatement stmt = mConnection.prepareStatement("update users set isFirstTime = 0  where userid = ?");
			stmt.setInt(1, userID);
			stmt.execute();
			return true;
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return false;
	}

	private static Connection mConnection;

}
