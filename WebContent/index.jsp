<%@page import="iec.LoggedInUsers"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<link rel="stylesheet" href="CSS/css.css" type="text/css" />
<title>Influential eCoding Login</title>
</head>

<body>
	<% 
		if(LoggedInUsers.isLogged((String) session.getAttribute("userName"))){
			response.sendRedirect("userScreen.jsp");
		}
	%>
	<div class="Logo">
		<img class="logo" src="Images/logo.jpg" />
	</div>
	<div class="MainBack" align="center">
		<div class="taskbar">
			<div class="header"></div>
		</div>

		<div class="Main">
			<div class="loginbox">
				<img class="usericon" src="Images/user-icon.png"></img>
				<div class="logcontent">
					<div class="title">
						<h1 class="header2">Member Login</h1>
					</div>
					<div class="border">
						<div class="logform">
							<div class="left">
								<p class="logp">Username</p>
								<p class="logp">Password</p>

							</div>
							<div class="right">
								<form action="ApplicationHandler" method="post">
									<input type="text" name="username"><br> 
									<input type="password" name="password"><br> 
									<button type="submit">LOGIN</button><br>
									<div>
									<%=(session.getAttribute("invalidData")==null)?(""):(session.getAttribute("invalidData")) %>
									</div>
								</form>
							</div>

						</div>

					</div>
				</div>
			</div>

		</div>
	</div>

</body>
</html>

<!-- <form action=""><p class="logp">Password</p> <input type="password" name="password">
</form>

<form action=""><p class="logp">Username</p> <input type="text" name="username">
</form>
 -->