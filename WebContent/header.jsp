<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="CSS/css.css" type="text/css">
</link>
<title>Influential eCoding</title>
</head>
<%
	if (session.getAttribute("userName") == null) {
		response.sendRedirect("index.jsp");
	}
%>
<body>
	<div class="Logo">
		<img class="logo" src="Images/logo.jpg" />
	</div>