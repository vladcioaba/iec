package iec;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Next
 */
@WebServlet("/Next")
public class Next extends HttpServlet {
	private static final long serialVersionUID = 1L;


	public Next() {
		super();
		// TODO Auto-generated constructor stub
	}

	/*
	 * protected void doGet(HttpServletRequest request, HttpServletResponse
	 * response) throws ServletException, IOException { // TODO Auto-generated
	 * method stub }
	 */

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		HttpSession session = request.getSession();
		int noLesson = Integer.parseInt((String) session.getAttribute("noLesson"));
		noLesson++;
		session.setAttribute("noLesson", String.valueOf(noLesson));
		response.sendRedirect("lesson.jsp");
		return;
	}

}
