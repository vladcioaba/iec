<%@page import="iec.database.DatabaseManager"%>
<%@include file="/header.jsp"%>

<div class="MainBack" align="center">
	<div class="taskbar">
		<div class="header">
			<h1 class="header">
				Welcome,
				<%=(String) session.getAttribute("userName")%>
			</h1>
		</div>
		<form action="Logout" method="post">
			<button type="submit" class="logout">Logout</button>
		</form>

	</div>

	<div class="Main">
		<div class="content">
			<div class="realcontent">
				<h1>
					FELICITARI!<br>
					<br>
				</h1>

				<h3>Ai terminat cu succes cursul!</h3>

			</div>

		</div>
		<div class="menu">
			<form action="StartLesson" method="post">
				<button type="submit" class="logout">Start Lesson</button>
			</form>
			<%
				if (((Integer) session.getAttribute("isAdmin")).intValue() == 1) {
			%>
			<form action="AddUserPage" method="post">
				<button type="submit" class="logout">Add User</button>
			</form>
			<%
				}
			%>
		</div>
	</div>
</div>
</body>
</html>
