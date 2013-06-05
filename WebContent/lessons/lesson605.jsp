
<div class="textblock">
	Arrays often need to be sorted in either ascending or descending order. There are many well known methods for doing
	this; the <span class="highlight"> quick sort</span> algorithm is among the most efficient. This section briefly
	describes one of the easiest sorting methods called the <span class="highlight">selection sort.</span>
</div>

<div class="textblock">
	<span class="highlight">Selection sort:</span> </br>
	</br> For each index position I in turn:
	<ul>
		<li>Find the smallest data value in the array from positions I to (Length - 1), where "Length" is the number of
			data values stored.</li>
		<li>Exchange the smallest value with the value at position I.</li>
	</ul>
</div>

<div class="textblock">
	To see how selection works, consider an array of five integer values, declared as

	<div class="code">int a[5];</div>

	and initially in the state:
	<div class="example">
		<img src="Images/RobMillerF6-3-1.GIF"></img>
	</div>

	Selection sort takes the array through the following sequence of states:
	<div class="example">
		<img src="Images/RobMillerF6-3-2.GIF"></img>
	</div>
	Each state is generated from the previous one by swapping the two elements of the array marked with a "bullet".
</div>

<div class="textblock">
	We can code this procedure in C++ with three functions. The top level function "selection_sort(...)" (which takes and
	array and an integer argument) sorts its first (array) argument by first calling the function
	"minimum_from(array,position,length)", which returns the index of the smallest element in "array" which is positioned
	at or after the index "position". It then swaps values according to the specification above, using the "swap(...)"
	function:

	<div class="code">
		void selection_sort(int a[], int length) </br> { </br> <span class="indent1"> for (int count = 0 ; count < length - 1 ;
			count++) </br> <span class="indent2">swap(a[count],a[minimum_from(a,count,length)]);</span>
		</span> </br> } </br> </br> int minimum_from(int a[], int position, int length) </br> { </br> <span class="indent1"> int min_index = position;
			</br> </br> for (int count = position + 1 ; count < length ; count ++) </br> <span class="indent2">if (a[count] <
				a[min_index]) min_index = count;</span> </br> </br> return min_index;
		</span> </br> } </br> </br> void swap(int& first, int& second) </br> { </br> <span class="indent1"> int temp = first; </br> first = second; </br> second
			= temp;
		</span> </br> }

	</div>
</div>





