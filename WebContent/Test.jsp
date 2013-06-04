<%@page import="iec.data.Test"%>
<%@page import="java.util.ArrayList"%>
<%@page import="iec.database.DatabaseManager"%>
<%@include file="/header.jsp"%>
<div class="MainBack" align="center">
	<div class="taskbar">
		<div class="header">
			<h1 class="header">Test</h1>
		</div>
		<form action="Logout" method="post">
			<button type="submit" class="logout">Logout</button>
		</form>

	</div>
	<%
		ArrayList<Test> test = null;
		if (DatabaseManager.isFirstTime((Integer) session.getAttribute("userID"))) {
			test = DatabaseManager.getFirstTest();
			session.setAttribute("test", test);
		} else{
			
		}
	%>
	<div class="Main">
		<form action="Evaluate" method="post">
			<div class="content">
				<div class="realcontent">
					<%
						for (Test t : test) {
					%>
					<div class="textblock">
						<%
							out.print(t.getTestBody() + "<br><br>");
								for (int i = 0; i < t.getTestAnswers().length; i++) {
									out.print("<input class=\"q\" type=\"radio\" name=\"" + t.getTestId() + "\" value=\"" + i + "\" > "
											+ t.getTestAnswers()[i] + "<br>");
								}
						%>
					</div>
					<%
						}
					%>

				</div>

			</div>
			<div class="menu">
				<button type="submit" class="logout">Submit Answers</button>
			</div>
		</form>
	</div>
</div>
</body>
</html>
