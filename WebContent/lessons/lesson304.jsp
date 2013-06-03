<div class="textblock">
	Under some circumstances, it is legitimate to require a function to modify the value of an actual parameter that it is
	passed. For example, going back to the program which inputs the dimensions of a rectangle and calculates the area, it
	would make good design sense to package up lines 9 to 13 of the main program into a "get-dimensions" sub-program (i.e.
	a C++ function). In this case, we require the function to alter the values of "this_length" and "this_width" (passed as
	parameters), according to the values input from the keyboard. We can achieve this as follows using reference
	parameters, whose types are post-fixed with an "&":
	<div class="code">
		#include< iostream > <br> using namespace std; <br> <br> int area(int length, int width); <br> <br>
		void get_dimensions(int& length, int& width); <br> <br> /* MAIN PROGRAM: */ <br> int main() <br> {
		<br> <span class="indent1"> int this_length, this_width; <br> <br> get_dimensions(this_length,
			this_width); <br> cout << "The area of a " << this_length << "x" << this_width; <br> cout << " rectangle is
			" << area(this_length, this_width); <br> <br> return 0;
		</span> <br> } <br> /* END OF MAIN PROGRAM */ <br> <br> /* FUNCTION TO INPUT RECTANGLE DIMENSIONS: */ <br>
		void get_dimensions(int& length, int& width) <br> { <br> <span class="indent1"> cout << "Enter the
			length: "; <br> cin >> length; <br> cout << "Enter the width: "; <br> cin >> width; <br> cout <<
			"\n"; <br>
		</span> } <br> /* END OF FUNCTION */ <br> <br> /* FUNCTION TO CALCULATE AREA: */ <br> int area(int
		length, int width) <br> { <br> <span class="indent1"> return length * width; <br>
		</span> } <br> /* END OF FUNCTION */
	</div>
</div>

<div class="textblock">Notice that, although the function "get_dimensions" permanently alters the values of the
	parameters "this_length" and "this_width", it does not return any other value (i.e. is not a "function" in the
	mathematical sense). This is signified in both the function declaration and the function heading by the reserved word
	"void".</div>