<%@include file="/header.jsp"%>
<div class="MainBack" align="center">
	<div class="taskbar">
		<div class="header">
			<h1 class="header">1.1 Introduction to C++</h1>
		</div>
		<form action="Logout" method="post">
			<button type="submit" class="logout">Logout</button>
		</form>
	</div>

	<div class="Main">
		<div class="content">
			<div class="realcontent">
				<%
					int noLesson = Integer.parseInt((String) session.getAttribute("noLesson"));
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
				if (noLesson != 107 && noLesson != 209) {
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
