<div class="textblock">
	Generally speaking, it is considered good practice to put constant declarations before the "main" program heading, and
	variable declarations afterwards, in the body of "main". For example, the following is part of a program to draw a
	circle of a given radius on the screen and then print out its circumference:
	<div class="code">
		#include < iostream > <br> using namespace std; <br> <br> const float PI = 3.1415926535; <br>
		const float SCREEN_WIDTH = 317.24; <br> <br> int drawCircle(float diameter); /* this is a "function
		prototype" */ <br> <br> int main() <br> { <br> <span class="indent1"> float radius = 0; <br>
			<br> cout << "Type in the radius of the circle.\n"; <br> cin >> radius; <br> <br>
			drawCircle(radius * 2); <br> <br> cout.setf(ios::fixed); <br> cout.precision(2); <br> cout <<
			"The circumference of a circle of radius " << radius; <br> cout << " is approximately " << 2 * PI * radius <<
			".\n"; <br> return 0;
		</span> <br> } <br> <br> int drawCircle(float diameter) <br> { <br> <span class="indent1">
			float radius = 0; <br> <br> if (diameter > SCREEN_WIDTH) <br> <span class="indent2"> radius =
				SCREEN_WIDTH / 2.0; </span><br> else <br> <span class="indent2"> radius = diameter / 2.0; </span>
		</span> <br> ... <br> ... <br> }
	</div>
</div>

<div class="textblock">After the definition of "main()", this program includes a definition of the function
	"drawCircle(...)", the details of which need not concern us here (we can simply think of "drawCircle(...)" as a
	function like "sqrt(...)"). But notice that although both "main()" and "drawCircle(...)" use the identifier "radius",
	this refers to a different variable in "main()" than in "drawCircle(...)". Had a variable "radius" been declared before
	the "main" program heading, it would have been a public or global variable. In this case, and assuming there was no
	other variable declaration inside the function "drawCircle(...)", if "drawCircle(...)" had assigned it the value
	"SCREEN_WIDTH / 2.0", "main()" would have subsequently printed out the wrong value for the circumference of the circle.
	We say that the (first) variable "radius" is local to the main part of the program, or has the function main as its
	scope. In contrast, it usually makes sense to make constants such as "PI" and "SCREEN_WIDTH" global, i.e. available to
	every function.</div>

<div class="textblock">In any case, notice that the program above incorporates the safety measure of echoing the
	input. In other words, the given value of "radius" is printed on the screen again, just before the circumference of the
	circle is output.</div>