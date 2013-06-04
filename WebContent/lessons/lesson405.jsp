
<div class="textblock">
	File operations, such as opening and closing files, are a notorious source of errors. Robust commercial programs should
	always include some check to make sure that file operations have completed successfully, and error handling routines in
	case they haven't. A simple checking mechanism is provided by the member function "fail()". The function call

	<div class="example">in_stream.fail();</div>

	returns True if the previous stream operation on "in_stream" was not successful (perhaps we tried to open a file which
	didn't exist). If a failure has occurred, "in_stream" may be in a corrupted state, and it is best not to attempt any
	more operations with it.
</div>

<div class="textblock">
	The following example program fragment plays very safe by quitting the program entirely, using the "exit(1)" command
	from the library "cstdlib":

	<div class="code">
		#include < iostream > </br> #include < fstream > </br> #include < cstdlib > </br> </br> using namespace std; </br> int main() </br> { </br> <span
			class="indent1">ifstream in_stream; </br> </br> in_stream.open("Lecture_4"); </br> if (in_stream.fail()) </br> { </br> <span
			class="indent2"> cout << "Sorry, the file couldn't be opened!\n"; </br> exit(1);
		</span></br> } </br> ...
		</span>
	</div>


</div>
