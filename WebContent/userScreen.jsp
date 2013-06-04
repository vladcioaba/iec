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
				<p>
					<br> GATHER ye rosebuds while ye may, <br> Old Time is still a-flying: <br> And this same flower
					that smiles to-day<br> To-morrow will be dying. <br> <br> The glorious lamp of heaven, the sun, <br>
					The higher he 's a-getting, <br> The sooner will his race be run, <br> And nearer he 's to setting. <br>
					<br> That age is best which is the first, <br> When youth and blood are warmer; <br> But being
					spent, the worse, and worst <br> Times still succeed the former. <br> <br> Then be not coy, but use
					your time, <br> And while ye may, go marry: <br> For having lost but once your prime, <br> You may
					for ever tarry.
				</p>

			</div>



		</div>
		<div class="menu">
			<form action="StartLesson" method="post">
				<button type="submit" class="logout">Start Lesson</button>
			</form>
		</div>
	</div>
</div>
</body>
</html>
