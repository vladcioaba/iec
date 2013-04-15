package src;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ApplicationHandler")
public class ApplicationHandler extends HttpServlet {

	public ApplicationHandler() {
		super();
	}

	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { handle(request,
	 * response); }
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		handle(request, response);
	}

	private void handle(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userID") != null && LoggedInUsers.isLogged((String) session.getAttribute("userID"))) {

		} else {
			// log the fuckin' user
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			/*
			 * if(e valid in db){adauga in loggedUsers; adauga in sesiune;
			 * }else{inapoi la login + warning}
			 */
			try {
				if (LoggedInUsers.isValid(username, password)) {
					session.setAttribute("userID", LoggedInUsers.logUser(username));
					response.sendRedirect("userScreen.jsp");
					return;
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
}
