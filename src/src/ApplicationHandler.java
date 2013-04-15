package src;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/ApplicationHandler")
public class ApplicationHandler extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public ApplicationHandler() {
		super();
	}

	/*protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		handle(request, response);
	}*/

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException,
			IOException {
		handle(request, response);
	}
	
	private void handle(HttpServletRequest request, HttpServletResponse response){
		
	}

}
