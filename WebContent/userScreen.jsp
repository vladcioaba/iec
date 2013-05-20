<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="CSS/css.css" type="text/css">
</link>
<title>Influential eCoding</title>
</head>

<body>
<div class="Logo"> <img class="logo" src="Images/logo.jpg"/> </div>

<div class="MainBack" align="center">
	<div class="taskbar">
		<div class="header"> <h1 class="header"> Welcome, <%=session.getAttribute("userName") %> </h1></div>
		<a href="LPv2.html" class="button" ><div class="button"> <h2>Logout</h2> </div></a>
	</div>

	<div class="Main">
		<div class="content">
			<div class="realcontent">
			<p> <br>
			GATHER ye rosebuds while ye may,	<br> 
			  Old Time is still a-flying:	 <br> 
			And this same flower that smiles to-day<br> 	 
			  To-morrow will be dying.	 <br> 
			 <br> 
			The glorious lamp of heaven, the sun,	    <br>     
			  The higher he 's a-getting,	 <br> 
			The sooner will his race be run,	 <br> 
			  And nearer he 's to setting.	 <br> 
			 <br> 
			That age is best which is the first,	 <br> 
			  When youth and blood are warmer;	  <br> 
			But being spent, the worse, and worst	 <br> 
			  Times still succeed the former.	 <br> 
			 <br> 
			Then be not coy, but use your time,	 <br> 
			  And while ye may, go marry:	 <br> 
			For having lost but once your prime,	  <br> 
			  You may for ever tarry.</p>

		</div>
		

			
		</div>
		<div class="menu">
			<a href="1-1.html" class="button"> <div class="button2">    <h2>Resume Session</h2></div> </a>
			<a href="1-1.html" )" class="button"> <div class="button2"> <h2>Start Session</h2></div> </a>
			<a onclick="alert( 'Page Under Construction!' )" class="button"> <div class="button2"> <h2>View Statistics</h2></div> </a>
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