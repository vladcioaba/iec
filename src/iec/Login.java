package iec;

import iec.data.User;
import iec.database.DatabaseManager;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Login
 */
@WebServlet("/Login")
public class Login extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Login() {
		super();
		DatabaseManager.getInstance();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub }
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		HttpSession session = request.getSession();
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		try {
			User user = LoggedInUsers.isValid(username, password);
			if (user != null) {
				session.setAttribute("userID", user.getUserId());
				session.setAttribute("userName", username);
				session.setAttribute("isAdmin", user.getmUserIsAdmin());
				session.setAttribute("noLesson", user.getmCurrentLessonn());
				if (user.getmUserIsAdmin() == 1) {
					response.sendRedirect("userScreen.jsp");
				} else {
					response.sendRedirect("userScreen.jsp");
					return;
				}

			} else {
				session.setAttribute("invalidData", "Datele de logare sunt invalide!");
				response.sendRedirect("index.jsp");
				return;
			}
		} catch (IOException e) {
			e.printStackTrace();
		}
	}

}
