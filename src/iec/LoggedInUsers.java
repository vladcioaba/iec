package iec;

import iec.data.User;
import iec.database.DatabaseManager;

import java.util.HashMap;

public class LoggedInUsers {
	private static HashMap<String, String> loggedUsers = new HashMap<String, String>();

	public static boolean isLogged(String username) {
		if (loggedUsers.containsValue(username)) {
			return true;
		}
		return false;
	}

	public static void logUser(User user) {
		String userId = String.valueOf(user.getUserId());
		String username = user.getUserName();
		loggedUsers.put(userId, username);
	}

	public static boolean isValid(String username, String password) {
		User user = DatabaseManager.autenticateUser(username, password);
		if (user.getUserId() != -1) {
			logUser(user);
			return true;
		}
		return false;
	}
}
