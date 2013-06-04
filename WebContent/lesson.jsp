<%@page import="iec.database.DatabaseManager"%>
<%@include file="/header.jsp"%>

<%
	if (DatabaseManager.isFirstTime((Integer) session.getAttribute("userID"))) {
		response.sendRedirect("Test.jsp");
		return;
	}
%>
<div class="MainBack" align="center">
	<div class="taskbar">
		<div class="header">
			<h1 class="header">
				<%@include file="/lessonTitle.jsp"%>
			</h1>
		</div>
		<form action="Logout" method="post">
			<button type="submit" class="logout">Logout</button>
		</form>
	</div>

	<div class="Main">
		<div class="content">
			<div class="realcontent">
				<%
					switch (noLesson) {
					case 101: {
				%>
				<%@include file="/lessons/lesson101.jsp"%>
				<%
					break;
					}
					case 102: {
				%>
				<%@include file="/lessons/lesson102.jsp"%>
				<%
					break;
					}
					case 103: {
				%>
				<%@include file="/lessons/lesson103.jsp"%>
				<%
					break;
					}
					case 104: {
				%>
				<%@include file="/lessons/lesson104.jsp"%>
				<%
					break;
					}
					case 105: {
				%>
				<%@include file="/lessons/lesson105.jsp"%>
				<%
					break;
					}
					case 106: {
				%>
				<%@include file="/lessons/lesson106.jsp"%>
				<%
					break;
					}
					case 107: {
				%>
				<%@include file="/lessons/lesson107.jsp"%>
				<%
					break;
					}
					case 201: {
				%>
				<%@include file="/lessons/lesson201.jsp"%>
				<%
					break;
					}
					case 202: {
				%>
				<%@include file="/lessons/lesson202.jsp"%>
				<%
					break;
					}
					case 203: {
				%>
				<%@include file="/lessons/lesson203.jsp"%>
				<%
					break;
					}
					case 204: {
				%>
				<%@include file="/lessons/lesson204.jsp"%>
				<%
					break;
					}
					case 205: {
				%>
				<%@include file="/lessons/lesson205.jsp"%>
				<%
					break;
					}
					case 206: {
				%>
				<%@include file="/lessons/lesson206.jsp"%>
				<%
					break;
					}
					case 207: {
				%>
				<%@include file="/lessons/lesson207.jsp"%>
				<%
					break;
					}
					case 208: {
				%>
				<%@include file="/lessons/lesson208.jsp"%>
				<%
					break;
					}
					case 209: {
				%>
				<%@include file="/lessons/lesson209.jsp"%>
				<%
					break;
					}
					case 301: {
				%>
				<%@include file="/lessons/lesson301.jsp"%>
				<%
					break;
					}
					case 302: {
				%>
				<%@include file="/lessons/lesson302.jsp"%>
				<%
					break;
					}
					case 303: {
				%>
				<%@include file="/lessons/lesson303.jsp"%>
				<%
					break;
					}
					case 304: {
				%>
				<%@include file="/lessons/lesson304.jsp"%>
				<%
					break;
					}
					case 305: {
				%>
				<%@include file="/lessons/lesson305.jsp"%>
				<%
					break;
					}
					case 306: {
				%>
				<%@include file="/lessons/lesson306.jsp"%>
				<%
					break;
					}
					case 307: {
				%>
				<%@include file="/lessons/lesson307.jsp"%>
				<%
					break;
					}
					case 308: {
				%>
				<%@include file="/lessons/lesson308.jsp"%>
				<%
					break;
					}
					}
				%>

			</div>
		</div>

		<div class="menu">
			<a href="Upv2.html" class="button">
				<div class="button2">
					<h2>Cancel</h2>
				</div>
			</a> <a href="LLv2.html" class="button">
				<div class="button2">
					<h2>Return</h2>
				</div>
			</a>
			<div class="space"></div>
			<%
				if (noLesson != 107 && noLesson != 209 && noLesson != 308) {
			%>
			<form action="Next" method="post">
				<button type="submit" class="logout">Next</button>
			</form>
			<%
				} else {
			%>
			<form action="GoToTest" method="post">
				<button type="submit" class="logout">Go To Test</button>
			</form>
			<%
				}
			%>

		</div>
	</div>
</div>

</body>
</html>
