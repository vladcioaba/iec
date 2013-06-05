
<div class="textblock">
	Having declared our array, we can treat the individual elements just like ordinary variables (of type "int" in the
	particular example above). In particular, we can write assignment statements such as:

	<div class="code">
		hours[4] = 34; </br> hours[5] = hours[4]/2;
	</div>

	and use them in logical expressions, e.g.

	<div class="code">if (number < 4 && hours[number] >= 40) { ...</div>
</div>

<div class="textblock">
	A common way to assign values to an array is using a "for" or "while" loop. The following program prompts the user for
	the number of hours that each employee has worked. It is more natural to number employees from 1 to 6 than from 0 to 5,
	but it is important to remember that array indexes always start from 0. Hence the program subtracts 1 from each
	employee number to obtain the corresponding array index.

	<div class="code">
		#include < iostream > </br> using namespace std; </br> </br> const int NO_OF_EMPLOYEES = 6; </br> typedef int
		Hours_array[NO_OF_EMPLOYEES]; </br> </br> int main() </br> { </br> <span class="indent1"> Hours_array hours; </br> int count; </br> </br> for
			(count = 1 ; count <= NO_OF_EMPLOYEES ; count++) </br> { </br> <span class="indent2"> cout << "Enter hours for employee
				number " << count << ": "; </br> cin >> hours[count - 1];
		</span> </br> } </br> </br> return 0;
		</span></br> }
	</div>
</div>



