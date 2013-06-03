<div class="textblock">
	After we have compiled the program above, we can run it. The result will be something like:
	<div class="code">
		Enter current year then press RETURN.<br> <b>1996</b><br> Enter your current age in years.<br> <b>36</b><br>
		Enter the year for which you wish to know your age.<br> <b>2001</b><br> Your age in 2001: 41<br>
	</div>
	The first, third, fifth and seventh lines above are produced on the screen by the program. In general, the program
	statement
	<div class="example">cout << Expression1 << Expression2 << ... << ExpressionN;</div>
	will produce the screen output
	<div class="example">Expression1Expression2...ExpressionN</div>
	The series of statements below produces an identical output to the one above.
	<div class="code">
		<p>
			cout << Expression1; <br> cout << Expression2;<br> ... <br> ... <br> cout << ExpressionN;
		</p>
	</div>

	If spaces or new lines are needed between the output expressions, these have to be included explicitly, with a " " or a
	"\n" respectively. The expression endl can also be used to output a new line, and in many cases is preferable to using
	"\n" since it has the side-effect of flushing the output buffer (output is often stored internally and printed in
	chunks when sufficient output has been accumulated; using endl forces all output to appear on the screen immediately).
</div>

<div class="textblock">
	The numbers in bold in the example screen output above have been typed in by the user. In this particular program run,
	the program statement

	<div class="example">cin >> year_now;</div>



	has resulted in the variable year_now being assigned the value 2001 at the point when the user pressed RETURN after
	typing in "2001". Programs can also include assignment statements, a simple example of which is the statement

	<div class="example">another_age = another_year - (year_now - age_now);</div>

	Hence the symbol = means "is assigned the value of". ("Equals" is represented in C++ as ==.)
</div>