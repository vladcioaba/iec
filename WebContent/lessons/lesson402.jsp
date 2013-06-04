
<div class="textblock">
	Before we can work with files in C++, we need to become acquainted with the notion of a stream. We can think of a
	stream as a channel or conduit on which data is passed from senders to receivers. As far as the programs we will use
	are concerned, streams allow travel in only one direction. Data can be sent out from the program on an <span
		class="highlight">output stream</span>, or received into the program on an <span class="highlight">input stream</span>.
	For example, at the start of a program, the standard input stream "cin" is connected to the keyboard and the standard
	output stream "cout" is connected to the screen.
</div>

<div class="textblock">
	In fact, input and output streams such as "cin" and "cout" are examples of (stream) <span class="highlight">objects</span>.
	So learning about streams is a good way to introduce some of the syntax and ideas behind the object-oriented part of
	C++. The header file which lists the operations on streams both to and from files is called "fstream". We will
	therefore assume that the program fragments discussed below are embedded in programs containing the "include" statement
	<div class="example">#include< fstream ></div>
</div>

<div class="textblock">
	As we shall see, the essential characteristic of stream processing is that data elements must be sent to or received
	from a stream one at a time, i.e. in <span class="highlight">serial</span> fashion.
</div>
