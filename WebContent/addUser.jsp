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
		<form action="AddUser" method="post">
			<div class="content">
				<div class="realcontent">
					<div class="addlogform">

						<div class="addleft">
							<p class="logp">Username</p>
							<p class="logp">Password</p>

						</div>
						<div class="right">

							<input type="text" class="add" name="username"><br> <input type="password" class="add"
								name="password"><br>

							<div class="innerright2">

								<button type="submit">Register</button>
							</div>
						</div>

					</div>

				</div>

			</div>
		</form>
	</div>
</div>
</body>
</html>
