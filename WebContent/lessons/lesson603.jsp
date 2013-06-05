
<div class="textblock">
	A typical run might produce the following input/output:

	<div class="code">
		Enter hours for employee number 1: 38 </br> Enter hours for employee number 2: 42 </br> Enter hours for employee number 3: 29 </br>
		Enter hours for employee number 4: 35 </br> Enter hours for employee number 5: 38 </br> Enter hours for employee number 6: 37
	</div>

	in which case our block of variables would then be in the state:
	<div class="example">
		<img src="Images/RobMillerF6-1-2.GIF"></img>
	</div>
</div>

<div class="textblock">
	It is instructive to consider what would have happened had we forgotten to subtract 1 from the variable "count" in the
	"cin ..." statement (within the "for" loop) in the previous program. Unlike some languages, C++ does not do range bound
	error checking, so we would have simply ended up in the state:
	<div class="example">
		<img src="Images/RobMillerF6-1-3.GIF"></img>
	</div>

	In other words, C++ would have simply put the value "37" into the next integer-sized chunk of memory located after the
	memory block set aside for the array "hours". This is a very undesirable situation - the compiler might have already
	reserved this chunk of memory for another variable (perhaps, for example, for the variable "count").
</div>


<div class="textblock">

	Array elements can be of data types other than "int". Here's a program that prints itself out backwards on the screen,
	using an array of type "char".
	<div class="code">
		#include < iostream > </br> #include < fstream > </br> </br> using namespace std; </br> </br> const int MAX = 1000; </br> typedef char
		File_array[MAX]; </br> </br> int main() </br> { </br> <span class="indent1"> char character; </br> File_array file; </br> int count; </br>
			ifstream in_stream; </br> </br> in_stream.open("6-1-2.cpp"); </br> in_stream.get(character); </br> for (count = 0 ; ! in_stream.eof() &&
			count < MAX ; count++) </br> { </br> <span class="indent1"> file[count] = character; </br> in_stream.get(character);
		</span> </br> } </br> in_stream.close(); </br> </br> while (count > 0) </br> <span class="indent1"> cout << file[--count]; </span> </br> </br> return 0;
		</span> </br> }
	</div>
</div>


