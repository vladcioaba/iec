
<div class="textblock">
	Having created a stream, we can connect it to a file using the <span class="highlight">member function</span>
	"open(...)". (We have already come across some member functions for output streams, such as "precision(...)" and
	"width(...)", in Lesson 2.) The function "open(...)" has a different effect for ifstreams than for ofstreams (i.e. the
	function is polymorphic).
</div>

<div class="textblock">
	To connect the ifstream "in_stream" to the file "Lecture_4", we use the following statement:
	<div class="example">in_stream.open("Lecture_4");</div>
</div>

<div class="textblock">
	This connects "in_stream" to the beginning of "Lecture_4". Diagramatically, we end up in the following situation:
	<div class="example">
		<img src="Images/RobMillerF4-2-1.GIF"></img>
	</div>
</div>

<div class="textblock">
	To connect the ofstream "out_stream" to the file "Lecture_4", we use an analogous statement:

	<div class="example">out_stream.open("Lecture_4");</div>

	Although this connects "out_stream" to "Lecture_4", it also deletes the previous contents of the file, ready for new
	input. Diagramatically, we end up as follows:
	<div class="example">
		<img src="Images/RobMillerF4-2-2.GIF"></img>
	</div>
</div>

<div class="textblock">
	To disconnect connect the ifstream "in_stream" to whatever file it is connected to, we write:

	<div class="example">in_stream.close();</div>

	Diagramatically, the situation changes from the previous one to:
	<div class="example">
		<img src="Images/RobMillerF4-2-3.GIF"></img>
	</div>
</div>

<div class="textblock">
	The statement:
	<div class="example">out_stream.close();</div>

	has a similar effect, but in addition the system will "clean up" by adding an "end-of-file" marker at the end of the
	file. Thus, if no data has been output to "Lecture_4" since "out_stream" was connected to it, we change from the
	situation as before:

	<div class="example">
		<img src="Images/RobMillerF4-2-3.GIF"></img>
	</div>

	In this case, the file "Lecture_4" still exists, but is <span class="highlight">empty</span>.
</div>
