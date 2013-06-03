<div class="textblock">
	Here's a trivial example of a program which includes a user defined function, in this case called "area(...)". The
	program computes the area of a rectangle of given length and width.

	<div class="code">
		#include< iostream > <br> using namespace std; <br> <br> int area(int length, int width); /* function
		declaration */ <br> <br> /* MAIN PROGRAM: */ <br> int main() <br> { <br> <span
			class="indent1"> int this_length, this_width; <br> <br> cout << "Enter the length: "; /* <--- line 9
			*/ <br> cin >> this_length; <br> cout << "Enter the width: "; <br> cin >> this_width; <br> cout
			<< "\n"; /* <--- line 13 */ <br> <br> cout << "The area of a " << this_length << "x" << this_width; <br>
			cout << " rectangle is " << area(this_length, this_width); <br> <br> return 0;
		</span><br> } <br> /* END OF MAIN PROGRAM */ <br> <br> /* FUNCTION TO CALCULATE AREA: */ <br> int
		area(int length, int width) /* start of function definition */ <br> { <br> <span class="indent1"> int
			number; <br> <br> number = length * width; <br> <br> return number;
		</span><br> } <br> /* end of function definition */ <br> /* END OF FUNCTION */
	</div>
</div>
<div class="textblock">
	Although this program is not written in the most succinct form possible, it serves to illustrate a number of features
	concerning functions:
	<ul>
		<li>The structure of a function definition is like the structure of "main()", with its own list of variable
			declarations and program statements.</li>
		<li>A function can have a list of zero or more parameters inside its brackets, each of which has a separate type.</li>
		<li>A function has to be declared in a function declaration at the top of the program, just after any global
			constant declarations, and before it can be called by "main()" or in other function definitions.</li>
		<li>Function declarations are a bit like variable declarations - they specify which type the function will
			return.</li>
	</ul>
</div>

<div class="textblock">
	A function may have more than one "return" statement, in which case the function definition will end execution as soon
	as the first "return" is reached. For example:
	<div class="code">
		double absolute_value(double number) <br> {<br> <span class="indent1">if (number >= 0) </span><br> <span
			class="indent2">return number;</span><br> <span class="indent1">else</span><br> <span class="indent2">return
			0 - number;</span><br> }
	</div>
</div>