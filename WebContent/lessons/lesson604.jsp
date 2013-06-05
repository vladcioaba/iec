
<div class="textblock">
	Functions can be used with array parameters to maintain a structured design. Here is a definition of an example
	function which returns the average hours worked, given an array of type "Hours_array"

	<div class="code">
		float average(Hours_array hrs) </br> { </br> <span class="indent1"> float total = 0; </br> int count; </br> for (count = 0 ; count
			< NO_OF_EMPLOYEES ; count++) </br> <span class="indent2">total += float(hrs[count]);</span> </br> </br> return (total /
			NO_OF_EMPLOYEES);
		</span> </br> }
	</div>
</div>

<div class="textblock">
	We could make this function more general by including a second parameter for the length of the array:

	<div class="code">
		float average(int list[], int length) </br> { </br> <span class="indent1"> float total = 0; </br> int count; </br> for (count = 0 ;
			count < length ; count++) </br> <span class="indent2">total += float(list[count]);</span> </br> </br> return (total / length);
		</span> </br> }
	</div>

	It is quite common to pass the array length to a function along with an array parameter, since the syntax for an array
	parameter (such as "int list[]" above) doesn't include the array's length.
</div>

<div class="textblock">
	Although array parameters are not declared with an <span class="highlight">&</span> character in function declarations
	and definitions, they are effectively reference parameters (rather than value parameters). In other words, when they
	execute, functions do not make private copies of the arrays they are passed (this would potentially be very expensive
	in terms of memory). Hence, like the reference parameters we have seen in Lecture 3, arrays can be permanently changed
	when passed as arguments to functions. For example, after a call to the following function, each element in the third
	array argument is equal to the sum of the corresponding two elements in the first and second arguments:

	<div class="code">
		void add_lists(int first[], int second[], int total[], int length) </br> { </br> <span class="indent1"> int count; </br> for
			(count = 0 ; count < length ; count++) </br> <span class="indent1">total[count] = first[count] + second[count];</span></span> </br> }
	</div>

</div>

<div class="textblock">

	As a safety measure, we can add the modifier "const" in the function head:

	<div class="code">
		void add_lists(const int fst[], const int snd[], int tot[], int len) </br> { </br> <span class="indent1"> int count; </br> for
			(count = 0 ; count < len; count++) </br> <span class="indent2">tot[count] = fst[count] + snd[count];</span></span> </br> }
	</div>
</div>


<div class="textblock">

	The compiler will then not accept any statements within the function's definition which potentially modify the elements
	of the arrays "fst" or "snd". Indeed, the restriction imposed by the "const" modifier when used in this context is
	stronger than really needed in some situations. For example, the following two function definitions will not be
	accepted by the compiler:

	<div class="code">
		void no_effect(const int list[]) </br> { </br> <span class="indent1">do_nothing(list);</span> </br> } </br> </br> void do_nothing(int list[]) </br>
		{ </br> <span class="indent1">;</span> </br> }
	</div>


	This is because, although we can see that "do_nothing(...)" does nothing, its head doesn't include the modifier
	"const", and the compiler only looks at the head of "do_nothing(...)" when checking to see if the call to this function
	from within "no_effect(...)" is legal.
</div>




