
<div class="textblock">The parameters in the functions above are all value parameters. When the function is called
	within the main program, it is passed the values currently contained in certain variables. For example, "area(...)" is
	passed the current values of the variables "this_length" and "this_width". The function "area(...)" then stores these
	values in its own private variables, and uses its own private copies in its subsequent computation.</div>

<div class="textblock">
	The idea of value parameters makes the use of functions "safe", and leads to good programming style. It helps guarantee
	that a function will not have hidden side effects. Here is a simple example to show why this is important. Suppose we
	want a program which produces the following dialogue:
	<div class="code">
		Enter a positive integer: <br> 4 <br> The factorial of 4 is 24, and the square root of 4 is 2.
	</div>
</div>
<div class="textblock">
	It would make sense to use the predefined function "sqrt(...)" in our program, and write another function
	"factorial(...)" to compute the factorial n! = (1 x 2 x ... x n) of any given positive integer n. Here's the complete
	program:

	<div class="code">
		#include< iostream > <br> #include< cmath > <br> using namespace std; <br> <br> int factorial(int
		number); <br> <br> /* MAIN PROGRAM: */ <br> int main() <br> { <br> <span class="indent1">
			int whole_number; <br> cout << "Enter a positive integer:\n"; <br> cin >> whole_number; <br> cout <<
			"The factorial of " << whole_number << " is "; <br> cout << factorial(whole_number); <br> cout << ", and
			the square root of " << whole_number << " is "; <br> cout << sqrt(whole_number) << ".\n"; <br> <br>
			return 0;
		</span><br> }<br> /* END OF MAIN PROGRAM */<br> <br> /* FUNCTION TO CALCULATE FACTORIAL: */<br> int
		factorial(int number)<br> {<br> <span class="indent1"> int product = 1;<br> <br> for ( ;
			number > 0 ; number--)<br> <span class="indent2">product *= number;</span><br> <br> return product;
		</span><br> } /* END OF FUNCTION */
	</div>
</div>

<div class="textblock">
	By the use of a value parameter, we have avoided the (correct but unwanted) output
	<div class="code">
		Enter a positive integer:<br> 4<br> The factorial of 4 is 24, and the square root of 0 is 0.
	</div>
	which would have resulted if the function "factorial(...)" had permanently changed the value of the variable
	"whole_number".
</div>