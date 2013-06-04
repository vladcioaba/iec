
<div class="textblock">
	Streams can be arguments to functions, but must be reference parameters (not value parameters). Below is another
	version of a program which uses the function "copy_to(...)".

	<div class="code">
		#include < iostream > </br> #include < fstream > </br> </br> using namespace std; </br> </br> void copy_to(ifstream& in, ofstream& out); </br> </br> /*
		MAIN PROGRAM: */ int main() </br> { </br> <span class="indent1"> ifstream in_stream; </br> ofstream out_stream; </br> </br>
			in_stream.open("Lecture_4"); </br> out_stream.open("Copy_of_4"); </br> copy_to(in_stream, out_stream); </br> out_stream.close(); </br>
			in_stream.close(); </br> </br> return 0;
		</span></br> } </br> /* END OF MAIN PROGRAM */ </br> </br> /* FUNCTION TO COPY A FILE TO ANOTHER FILE AND TO THE SCREEN: */ </br> void
		copy_to(ifstream& in, ofstream& out) </br> { </br> <span class="indent1"> char character; </br> </br> in.get(character); </br> while
			(!in.eof()) </br> { </br> <span class="indent2"> cout << character; </br> out.put(character); </br> in.get(character);
		</span></br> } </br>
		</span> } </br> /* END OF FUNCTION */
	</div>

</div>

<div class="textblock">In this lecture we have seen how programs may be connected to external files for input and
	output using streams. We have seen how "low-level" character input and output can be achieved using the functions
	"get(...)" and "put(...)", and how "high-level" input and output of other kinds of data types can be achieved using the
	stream operators ">>" and "<<".</div>

