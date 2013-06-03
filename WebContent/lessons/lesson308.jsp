<div class="textblock">
	Notice that whereas "include" statements for standard libraries such as "iostream" delimit the file name with angle
	("<>") brackets, the usual convention is to delimit user-defined library file names with double quotation marks - hence
	the line " #include"averages.h" " in the listing above. </br>
	</br> The code in the header file "averages.h" is listed below. Notice the use of the file identifier "AVERAGES_H", and the
	reserved words "ifndef" ("if not defined"), "define", and "endif". "AVERAGES_H" is a (global) symbolic name for the
	file. The first two lines and last line of code ensure that the compiler (in fact, the preprocessor) only works through
	the code in between once, even if the line "#include"averages.h"" is included in more than one other file. </br>
	</br> Constant and type definitions are also often included in header files. You will learn more about this in the
	object-oriented part of the course.
</div>
<div class="textblock">
	<div class="code">
		#ifndef AVERAGES_H</br> #define AVERAGES_H</br> </br> /* (constant and type definitions could go here) */</br> </br> /* FUNCTION TO COMPUTE
		INTEGER AVERAGE OF 3 INTEGERS: */</br> int average(int first_number, int second_number, int third_number);</br> </br> /* FUNCTION TO
		COMPUTE INTEGER AVERAGE OF 2 INTEGERS: */</br> int average(int first_number, int second_number);</br> </br> #endif
	</div>
</div>
<div class="textblock">
	Finally, the code in the implementation file "averages.cpp" is as follows:
	<div class="code">
		#include< iostream > </br> #include"averages.h" </br> </br> using namespace std; </br> </br> /* FUNCTION TO COMPUTE INTEGER AVERAGE OF 3
		INTEGERS: */ </br> int average(int first_number, int second_number, int third_number) </br> { </br> <span class="indent1">return
			((first_number + second_number + third_number) / 3);</span> </br> } </br> /* END OF FUNCTION */ </br> </br> /* FUNCTION TO COMPUTE INTEGER
		AVERAGE OF 2 INTEGERS: */ </br> int average(int first_number, int second_number) </br> { </br> <span class="indent1">return
			((first_number + second_number) / 2);</span> </br> } </br> /* END OF FUNCTION */
	</div>
	Note the modularity of this approach. We could change the details of the code in "averages.cpp" without making any
	changes to the code in "averages.h" or in the main program file.

</div>
<div class="textblock">In this lecture we have shown how C++ programs can include user-defined functions. We have
	seen how functions are passed parameters, which may either be value parameters or reference parameters. We have
	discussed how the inclusion of functions facilitates the use of procedural abstraction in the top-down design of
	programs. We have also seen how function definitions may be located in separate implementation files, and accessed via
	header files.</div>