
<div class="textblock">Before we can use an input or output stream in a program, we must "create" it. Statements
	to create streams look like variable declarations, and are usually placed at the top of programs or function
	implementations along with the variable declarations.</div>

<div class="textblock">

	So, for example, the statements:
	<div class="example">
		ifstream in_stream; </br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ofstream out_stream;
	</div>
	Create a stream called "in_stream" belonging to the class (like type) "ifstream" (input-file-stream), and a stream
	called "out_stream" belonging to the class "ofstream" (output-file-stream). However, the analogy between streams and
	ordinary variables (of type "int", "char", etc.) can't be taken too far. We cannot, for example, use simple assignment
	statements with streams (e.g. we can't just write "in_stream1 = in_stream2").
</div>