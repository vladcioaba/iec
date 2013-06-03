<div class="textblock">
	C++ allows <span class="highlight">polymorphism</span>, i.e. it allows more than one function to have the same name,
	provided all functions are either distinguishable by the typing or the number of their parameters. Using a function
	name more than once is sometimes referred to as overloading the function name. Here's an example:
	<div class="code">
		#include< iostream > <br> using namespace std; <br> <br> int average(int first_number, int
		second_number, int third_number); <br> <br> int average(int first_number, int second_number); <br> <br>
		/* MAIN PROGRAM: */ <br> int main() <br> { <br> <span class="indent1"> int number_A = 5,
			number_B = 3, number_C = 10; <br> <br> cout << "The integer average of " << number_A << " and "; <br>
			cout << number_B << " is "; <br> cout << average(number_A, number_B) << ".\n\n"; <br> <br> cout <<
			"The integer average of " << number_A << ", "; <br> cout << number_B << " and " << number_C << " is "; <br>
			cout << average(number_A, number_B, number_C) << ".\n"; <br> <br> return 0;
		</span> <br> } <br> /* END OF MAIN PROGRAM */ <br> <br> /* FUNCTION TO COMPUTE INTEGER AVERAGE OF 3
		INTEGERS: */ <br> int average(int first_number, int second_number, int third_number) <br> { <br> <span
			class="indent1"> return ((first_number + second_number + third_number) / 3);</span> <br> } <br> /* END OF
		FUNCTION */ <br> <br> /* FUNCTION TO COMPUTE INTEGER AVERAGE OF 2 INTEGERS: */ <br> int average(int
		first_number, int second_number) <br> { <br> <span class="indent1"> return ((first_number +
			second_number) / 2);</span> <br> } <br> /* END OF FUNCTION */
	</div>
</div>

<div class="textblock">
	This program produces the output:
	<div class="code">
		The integer average of 5 and 3 is 4. <br> <br> The integer average of 5, 3 and 10 is 6.
	</div>
</div>