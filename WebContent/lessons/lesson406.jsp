
<div class="textblock">
	<div class="example">
		<h2>Input using "get(...)"</h2>
	</div>
	Having opened an input file, we can extract or read single characters from it using the member function "get(...)".
	This function takes a single argument of type "char". If the program is in the state represented in Figure 4.2.1, the
	statement

	<div class="example">in_stream.get(ch);</div>

	has two effects: (i) the variable "ch" is assigned the value "'4'", and (ii) the ifstream "in_stream" is re- positioned
	so as to be ready to input the next character in the file. Diagramatically, the new situation is:

	<div class="example">
		<img src="Images/RobMillerF4-4-1.GIF"></img>
	</div>
</div>

<div class="textblock">
	<div class="example">
		<h2>Output using "put(...)"</h2>
	</div>

	We can input or write single characters to a file opened via an ofstream using the member function "put(...)". Again,
	this function takes a single argument of type "char". If the program is in the state represented in Figure 4.2.2, the
	statement

	<div class="example">out_stream.put('4');</div>

	changes the state to:
	<div class="example">
		<img src="Images/RobMillerF4-4-2.GIF"></img>
	</div>
</div>

<div class="textblock">
	<div class="example">
		<h2>The "putback(...)" Function</h2>
	</div>

	C++ also includes a "putback(...)" function for ifstreams. This doesn't really "put the character back" (it doesn't
	alter the actual input file), but behaves as if it had. Diagramatically, if we started from the state in Figure 4.4.1,
	and executed the statement

	<div class="example">in_stream.putback(ch);</div>

	we would end up in the state:
	<div class="example">
		<img src="Images/RobMillerF4-4-3.GIF"></img>
	</div>

</div>

<div class="textblock">
	Indeed, we can "putback" any character we want to. The alternative statement

	<div class="example">in_stream.putback('7');</div>

	would result in:
	<div class="example">
		<img src="Images/RobMillerF4-4-4.GIF"></img>
	</div>


</div>
