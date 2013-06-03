<div class="textblock">
	The last few lines of our example program (other than "return 0") are:
	<div class="code">
		if (another_age >= 0) <br> {<br> <span class="indent1">cout << "Your age in " << another_year << ":
			";<br> cout << another_age << "\n";
		</span><br> }<br> else <br> { <br> <span class="indent1">cout << "You weren't even born in ";<br>
			cout << another_year << "!\n";
		</span><br> }
	</div>
	The "if ... else ..." branching mechanism is a familiar construct in many procedural programming languages. In C++, it
	is simply called an if statement, and the general syntax is
	<div class="code">
		if (condition)<br> {<br> <span class="indent1">Statement1;<br> ...<br> ...<br>
			StatementN;
		</span><br> } <br> else <br> {<br> <span class="indent1">StatementN+1;<br> ...<br> ...<br>
			StatementN+M;
		</span><br> }
	</div>
	The "else" part of an "if statement" may be omitted, and furthermore, if there is just one Statement after the "if
	(condition)", it may be simply written as
	<div class="code">
		if (condition)<br> <span class="indent2">Statement;</span>
	</div>
</div>

<div class="textblock">
	It is quite common to find "if statements" strung together in programs, as follows:
	<div class="code">
		...<br> ...<br> if (total_test_score < 50)<br> <span class="indent1">cout << "You are a failure.
			You must study much harder.\n";</span><br> else if (total_test_score < 65)<br> <span class="indent1">cout
			<< "You have just scraped through the test.\n";</span><br> else if (total_test_score < 80)<br> <span
			class="indent1">cout << "You have done quite well.\n";</span><br> else if (total_test_score < 95)<br> <span
			class="indent1">cout << "Your score is excellent. Well done.\n";</span><br> else <br> {<br> <span
			class="indent1">cout << "You cheated!\n";<br> total_test_score = 0;
		</span><br> }<br> ...<br> ...
	</div>
	The C++ compiler accepts the program fragment in our example by counting all of the bold text in
	<div class="code">
		...<br> ...<br> if (total_test_score < 50)<br> <span class="indent1">cout << "You are a failure.
			You must study much harder.\n";</span><br> else <b>if (total_test_score < 65)<br> <span class="indent1">cout
				<< "You have just scraped through the test.\n";</span><br> else if (total_test_score < 80)<br> <span
			class="indent1">cout << "You have done quite well.\n";</span><br> else if (total_test_score < 95)<br> <span
			class="indent1">cout << "Your score is excellent. Well done.\n";</span><br> else <br> {<br> <span
			class="indent1">cout << "You cheated!\n";<br> total_test_score = 0;
		</span><br> }
		</b><br> ...<br> ...
	</div>
	as the single statement which must follow the first else.
</div>