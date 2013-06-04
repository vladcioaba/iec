package iec;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class StartLesson
 */
@WebServlet("/StartLesson")
public class StartLesson extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public StartLesson() {
		super();
	}

	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub }
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		HttpSession session = request.getSession();
		int noLesson = 301;
		session.setAttribute("noLesson", String.valueOf(noLesson));
		response.sendRedirect("lesson.jsp");
		return;
	}

}