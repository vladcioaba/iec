package iec;

import iec.data.User;
import iec.database.DatabaseManager;

import java.util.HashMap;
import java.util.Set;

public class LoggedInUsers {
	private static HashMap<String, String> loggedUsers = new HashMap<String, String>();

	public static synchronized boolean isLogged(String username) {
		if (loggedUsers.containsValue(username)) {
			return true;
		}
		return false;
	}

	public static void logUser(User user) {
		final String userId = String.valueOf(user.getUserId());
		String username = user.getUserName();
		loggedUsers.put(userId, username);
		Thread t = new Thread(new Runnable() {

			@Override
			public void run() {
				try {
					Thread.sleep(7200000);
					synchronized (loggedUsers) {
						if (loggedUsers.containsKey(userId)) {
							loggedUsers.remove(userId);
						}
					}
				} catch (Exception e) {
					System.out.println(e.getMessage());
					e.printStackTrace();
				}

			}
		});
		t.start();
	}

	public static User isValid(String username, String password) {
		User user = DatabaseManager.autenticateUser(username, password);
		if (user.getUserId() != -1) {
			logUser(user);
			return user;
		}
		return null;
	}

	public static synchronized void removeUser(String userID) {
		loggedUsers.remove(userID);
	}
}
