<div class="textblock">
	As we have seen, C++ makes heavy use of predefined standard libraries of functions, such as "sqrt(...)". In fact, the
	C++ code for "sqrt(...)", as for most functions, is typically split into two files:
	<ul>
		<li>The header file "cmath" contains the function declarations for "sqrt(...)" (and for many other mathematical
			functions). This is why in the example programs which call "sqrt(...)" we are able to write "#include<cmath>",
			instead of having to declare the function explicitly.
		</li>
		<li>The implementation file "math.cpp" contains the actual function definitions for "sqrt(...)" and other
			mathematical functions. (In practice, many C++ systems have one or a few big file(s) containing all the standard
			function definitions, perhaps called "ANSI.cpp" or similar.)</li>
	</ul>
	It is easy to extend this library structure to include files for user-defined functions, such as "area(...)",
	"factorial(...)" and "average(...)". As an example, the program is split into a main program file, a header file for
	the two average functions, and a corresponding implementation file.
</div>
<div class="textblock">
	The code in the main program file is as follows:
	<div class="code">
		#include< iostream > </br> #include"averages.h" </br> </br> using namespace std; </br> </br> int main() </br> { </br> <span class="indent1"> int
			number_A = 5, number_B = 3, number_C = 10; </br> </br> cout << "The integer average of " << number_A << " and "; </br> cout <<
			number_B << " is "; </br> cout << average(number_A, number_B) << ".\n\n"; </br> </br> cout << "The integer average of " << number_A
			<< ", "; </br> cout << number_B << " and " << number_C << " is "; </br> cout << average(number_A, number_B, number_C) << ".\n";
			</br> </br> return 0;
		</span> </br> }
	</div>

</div>