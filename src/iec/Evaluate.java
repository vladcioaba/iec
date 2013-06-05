package iec;

import iec.data.Test;
import iec.data.UserTest;
import iec.database.DatabaseManager;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Vector;
import java.sql.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Evaluate
 */
@WebServlet("/Evaluate")
public class Evaluate extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public Evaluate() {
		super();
		// TODO Auto-generated constructor stub
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
		session.setAttribute("stop", new Date(Calendar.getInstance().getTimeInMillis()));
		// We shall parse the array of answers and check how many are wrong /
		// correct
		// So we can decide if the next question is previous or next lesson
		ArrayList<Test> allTests = (ArrayList<Test>) session.getAttribute("test");
		int[][] currentAnswers = new int[allTests.size()][2]; // cAns[][0] ->
																// his answer
																// cAns[][1] ->
																// severity of q

		// The progress value used to send the user
		// > 0 means progress
		// < 0 means regression; nr of steps back is determined by range
		int progressValue = 0;

		// Current User ID
		int currentUserId = (Integer) session.getAttribute("userID");

		int iterator = 0;
		for (Test t : allTests) {
			try {
				currentAnswers[iterator][0] = Integer.parseInt(request.getParameter("" + t.getTestId()));
			} catch (Exception e) {
				currentAnswers[iterator][0] = -1;
			}
			currentAnswers[iterator][1] = t.getTestDifficulty();

			// we update progress, according to difficulty
			progressValue += this.calculateProgressValue(currentAnswers[iterator], t.getTestCorrectAnswerValue(), 1);

			// we save the Test Completion in the DB
			DatabaseManager.setTestComplete(currentUserId, t.getTestId(), currentAnswers[iterator][0],
					(Date) session.getAttribute("start"), (Date) session.getAttribute("stop"));
			++iterator;
		}

		session.removeAttribute("stop");
		session.removeAttribute("start");
		session.removeAttribute("test");
		session.removeAttribute("isNotRefreshed");

		if (DatabaseManager.isFirstTime(currentUserId)) {
			// For the first test, we evaluate without history
			int startLesson;
			if (progressValue > 0) {
				progressValue /= 10;

				if (progressValue == 0) {
					progressValue = 1;
				}

				startLesson = progressValue * 100 + 1;
			} else {
				startLesson = 101;
			}

			session.setAttribute("noLesson", startLesson);
			DatabaseManager.setCurrentLesson(currentUserId, startLesson);
			DatabaseManager.setIsNotFirstTime(currentUserId);
			response.sendRedirect("lesson.jsp");
			return;

		} else {
			// now we balance the current answer with the positive/negative
			// answers from the past
			Vector<UserTest> historicTestAnswers = DatabaseManager.getUserTestHistory(currentUserId);
			// for every previous answer
			for (UserTest historicTestAnswer : historicTestAnswers) {
				Test foundTest = null;
				// we search for that answered test in our test id lists
				for (Test tempTest : allTests) {
					if (tempTest.getTestId() == historicTestAnswer.getTestId()) {
						foundTest = tempTest;
						break;
					}
				}

				// crash if we didn't find it
				// if (foundTest == null) {
				// throw (new
				// ServletException("Previous History Test not found in test list!"));
				// }
				//
				// // we update the progress value
				// int[] thisTestValues = new int[2];
				// thisTestValues[0] = historicTestAnswer.getUserAnswer();
				// thisTestValues[1] = foundTest.getTestDifficulty();
				// progressValue += this.calculateProgressValue(thisTestValues,
				// foundTest.getTestCorrectAnswerValue(), 3);

				if (foundTest != null) {
					int[] thisTestValues = new int[2];
					thisTestValues[0] = historicTestAnswer.getUserAnswer();
					thisTestValues[1] = foundTest.getTestDifficulty();
					progressValue += this.calculateProgressValue(thisTestValues, foundTest.getTestCorrectAnswerValue(),
							3);
				}

			}

			int currentLesson = (Integer) session.getAttribute("noLesson");

			// Now we decide where we go
			if (progressValue > 0) {
				// next lesson
				int nextLesson = (currentLesson / 100 + 1) * 100 + 1;
				if (nextLesson == 701) {
					// Finished all lessons
					session.setAttribute("noLesson", 101);
					DatabaseManager.setCurrentLesson(currentUserId, 101);
					response.sendRedirect("felicitari.jsp");
					return;
				} else {
					// Send to next lesson
					session.setAttribute("noLesson", nextLesson);
					DatabaseManager.setCurrentLesson(currentUserId, nextLesson);
					response.sendRedirect("lesson.jsp");
					return;
				}
			} else if (progressValue < 0) {
				// Send to Previous Lesson
				int nextLesson = (currentLesson / 100 - 1) * 100 + 1;
				if (nextLesson == 1) {
					nextLesson = 101;
				}
				session.setAttribute("noLesson", nextLesson);
				DatabaseManager.setCurrentLesson(currentUserId, nextLesson);
				response.sendRedirect("lesson.jsp");
				return;
			} else {
				// Reload current lesson
				int sameLesson = (currentLesson / 100) * 100 + 1;
				session.setAttribute("noLesson", sameLesson);
				DatabaseManager.setCurrentLesson(currentUserId, sameLesson);
				response.sendRedirect("lesson.jsp");
				return;
			}
		}
	}

	private int calculateProgressValue(int[] answerVectAndSeverity, int correctAnswer, int byHowMuch)
			throws ServletException {
		// we update progress, according to difficulty
		if (answerVectAndSeverity[0] == correctAnswer) {
			// we have a correct answer
			switch (answerVectAndSeverity[1]) {
			case 1:
				return Math.round(3 / byHowMuch);
			case 2:
				return Math.round(5 / byHowMuch);
			case 3:
				return Math.round(9 / byHowMuch);
			default:
				throw (new ServletException("Severity not found for " + "answerVectAndSeverity="
						+ answerVectAndSeverity + ", correctAnswer=" + correctAnswer));
			}
		} else {
			// we have a negative answer
			switch (answerVectAndSeverity[1]) {
			case 1:
				return Math.round(-9 / byHowMuch);
			case 2:
				return Math.round(-5 / byHowMuch);
			case 3:
				return Math.round(-3 / byHowMuch);
			default:
				throw (new ServletException("Severity not found for " + "answerVectAndSeverity="
						+ answerVectAndSeverity + ", correctAnswer=" + correctAnswer));
			}
		}
	}
}
