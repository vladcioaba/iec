package iec;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import iec.database.*;

@WebServlet("/ApplicationHandler")
public class ApplicationHandler extends HttpServlet {

	private static final long serialVersionUID = 1L;

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

	@Override
	public void init() throws ServletException {
		super.init();
		DatabaseManager.getInstance();
	}

	private void handle(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		if (session.getAttribute("userID") != null && LoggedInUsers.isLogged((String) session.getAttribute("userName"))) {
			
		} else {
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			try {
				if (LoggedInUsers.isValid(username, password)) {
					session.setAttribute("userName", username);
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
