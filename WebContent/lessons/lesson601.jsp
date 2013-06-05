

<div class="textblock">
	Although we have already seen how to store large amounts of data in files, we have as yet no convenient way to
	manipulate such data from within programs. For example, we might want to write a program that inputs and then ranks or
	sorts a long list of numbers. C++ provides a <span class="highlight">structured data type</span> called an <span
		class="highlight">array</span> to facilitate this kind of task. The use of arrays permits us to set aside a group of
	memory locations (i.e. a group of variables) that we can then manipulate as a single entity, but that at the same time
	gives us direct access to any individual component. Arrays are simple examples of structured data types - they are
	effectively just lists of variables all of the same data type ("int", "char" or whatever). Later in the course you will
	learn how to construct more complicated compound data structures.

</div>

<div class="textblock">
	The general syntax for an array declaration is:

	<div class="code">< component type > < variable identifier >[< integer value >];</div>

	For example, suppose we are writing a program to manipulate data concerning the number of hours a group of 6 employees
	have worked in a particular week. We might start the program with the array declaration:

	<div class="code">int hours[6];</div>

	or better,

	<div class="code">
		const int NO_OF_EMPLOYEES = 6; </br> int hours[NO_OF_EMPLOYEES];
	</div>

	Indeed, if we are going to use a number of such arrays in our program, we can even use a type definition:

	<div class="code">
		const int NO_OF_EMPLOYEES = 6; </br> typedef int Hours_array[NO_OF_EMPLOYEES]; </br> Hours_array hours; </br> Hours_array
		hours_week_two;
	</div>

	In each case, we end up with 6 variables of type "int" with identifiers

	<div class="code">hours[0] hours[1] hours[2] hours[3] hours[4] hours[5]</div>
</div>

<div class="textblock">
	Each of these is referred to as an element or component of the array. The numbers 0, ..., 5 are the indexes or
	subscripts of the components. An important feature of these 6 variables is that they are allocated consecutive memory
	locations in the computer. We can picture this as:
	<div class="example">
		<img src="Images/RobMillerF6-1-1.GIF"></img>
	</div>
</div>


