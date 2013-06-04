
<div class="textblock">
	Special care has to be taken with input when the end of a file is reached. Most versions of C++ incorporate an
	end-of-file (EOF) flag, and a member function called "eof()" for ifstreams to test if this flag is set to True or
	False. It's worth discussing such systems briefly, since many text books assume this useful facility. In such systems,
	when an ifstream is initially connected to a file, the EOF flag is set to False (even if the file is empty). However,
	if the ifstream "in_stream" is positioned at the end of a file, and the EOF flag is False, the statement

	<div class="example">in_stream.get(ch);</div>

	will leave the variable "ch" in an unpredictable state, and set the EOF flag to True. Once the EOF flag is set to True,
	no attempt should be made to read from the file, since the results will be unpredictable. To illustrate with a
	diagramatic example, if we start from
	<div class="example">
		<img src="Images/RobMillerF4-5-1.GIF"></img>
	</div>

	and then execute the statement

	<div class="example">in_stream.get(ch);</div>

	this results in the state
	<div class="example">
		<img src="Images/RobMillerF4-5-2.GIF"></img>
	</div>
	If we again execute the statement

	<div class="example">in_stream.get(ch);</div>

	this now results in the state
	<div class="example">
		<img src="Images/RobMillerF4-5-3.GIF"></img>
	</div>

	The boolean expression

	<div class="example">in_stream.eof()</div>

	will now evaluate to True.
</div>

<div class="textblock">
	Below is a simple program which uses these techniques to copy the file "Lecture_4" simultaneously to the screen and to
	the file "Copy_of_4". Note the use of a while loop in this program. "While" loops are simplified versions of "for"
	loops, without the initialisation and update statements in the "()" parentheses.
	<div class="code">
		#include < iostream > </br> #include < fstream > </br> </br> using namespace std; </br> </br> int main() </br> { </br> <span class="indent1"> char
			character; </br> ifstream in_stream; </br> ofstream out_stream; </br> </br> in_stream.open("Lecture_4"); </br> out_stream.open("Copy_of_4"); </br>
			</br> in_stream.get(character); </br> while (!in_stream.eof()) </br> { </br> <span class="indent2"> cout << character; </br>
				out_stream.put(character); </br> in_stream.get(character);
		</span></br> } </br> </br> out_stream.close(); </br> in_stream.close(); </br> </br> return 0;
		</span></br> } </br>
	</div>

</div>
