package src;

import java.util.HashMap;

public class LoggedInUsers {
	private static HashMap<String, User> loggedUsers = new HashMap<String, User>();

	public static boolean isLogged(String userId) {
		if (loggedUsers.containsKey(userId)) {
			return true;
		}
		return false;
	}

	public static String logUser(String username) {
		String userId = null;
		// baga in hash
		return username;
	}

	public static boolean isValid(String username, String password) {
		return true;
	}
}
