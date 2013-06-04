
<div class="textblock">
	We have already seen how "if" statements can be strung together to form a "multiway branch". Here's a simplified
	version of the previous example:
	<div class="code">
		... </br> ... </br> if (total_test_score >=0 && total_test_score < 50) </br> <span class="indent1">cout << "You are a failure
			- you must study much harder.\n";</span> </br> else if (total_test_score < 60) </br> <span class="indent1">cout << "You have
			just scraped through the test.\n";</span> </br> else if (total_test_score < 80) </br> <span class="indent1">cout << "You have
			done quite well.\n";</span> </br> else if (total_test_score <= 100) </br> <span class="indent1">cout << "Your score is
			excellent - well done.\n";</span> </br> else </br> <span class="indent1">cout << "Incorrect score - must be between 0 and
			100.\n";</span> </br> ... </br> ...
	</div>

</div>

<div class="textblock">
	Because multiple selection can sometimes be difficult to follow, C++ provides an alternative method of handling this
	concept, called the switch statement. "Switch" statements can be used when several options depend on the value of a
	single variable or expression. In the example above, the message printed depends on the value of "total_test_score".
	This can be any number between 0 and 100, but we can make things easier to handle by introducing an extra integer
	variable "score_out_of_ten", and adding the assignment:

	<div class="example">score_out_of_ten = total_test_score / 10;</div>

</div>

<div class="textblock">
	The programming task is now as follows: (i) if "score_out_of_ten" has value 0, 1, 2, 3 or 4, print "You are a failure -
	you must study much harder", (ii) if "score_out_of_ten" has value 5, print "You have just scraped through the test",
	(iii) if "score_out_of_ten" has value 6 or 7, print "You have done quite well", and finally (iv) if "score_out_of_ten"
	has value 8, 9 or 10, print "Your score is excellent - well done". Here's how this is achieved with a "switch"
	statement:
	<div class="code">
		... </br> ... </br> score_out_of_ten = total_test_score / 10; </br> </br> switch (score_out_of_ten) </br> { </br> <span class="indent1"> case
			0: </br> case 1: </br> case 2: </br> case 3: </br> case 4: cout << "You are a failure - you "; </br> <span class="indent2"> cout <<
				"must study much harder.\n"; </br>
		</span> </br> <span class="indent2"> break; </br>
		</span> </br> case 5: cout << "You have just scraped through the test.\n"; </br> <span class="indent2"> break; </br>
		</span> </br> case 6: </br> case 7: cout << "You have done quite well.\n"; </br> <span class="indent2"> break; </br>
		</span> </br> case 8: </br> case 9: </br> case 10: cout << "Your score is excellent - well done.\n"; </br> <span class="indent2"> break; </br>
		</span> </br> default: cout << "Incorrect score - must be between "; </br> <span class="indent2"> cout << "0 and 100.\n"; </br>
		</span>
		</span> </br> } </br> ... </br> ...
	</div>

</div>

<div class="textblock">
	In general, the syntax of a "switch" statement is (approximately):

	<div class="code">
		switch (selector) </br> { </br> <span class="indent2"> case label1: <statements1> </br>
							<span class="indent2">				break;</span> </br>
							... </br>
							... </br>
							... </br>
						 </br>
							case labelN:    <statements N> </br>
							<span class="indent2">				break;</span> </br>
						 </br>
							default:        < statements >
							</span> </br> }
	</div>

</div>

<div class="textblock">
	There are several things to note about such "switch" statements:
	<ul>
		<li>The statements which are executed are exactly those between the first label which matches the value of
			selector and the first "break" after this matching label.</li>
		<li>The "break" statements are optional, but they help in program efficiency and clarity and should ideally
			always be used to end each case. When a "break" is encountered within a case's statement, control is transfered
			immediately to the first program statement following the entire "switch" statement. Otherwise, execution continues.</li>
		<li>The selector can have a value of any ordinal type (e.g. "char" or "int" but not "float").</li>
		<li>The "default" is optional, but is a good safety measure.</li>
	</ul>
</div>

