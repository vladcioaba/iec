<div class="textblock">

	As we have already seen, variables have to be declared before they can be used in a program, using program statements
	such as

	<div class="example">float number;</div>

	Between this statement and the first statement which assigns "number" an explicit value, the value contained in the
	variable "number" is arbitrary. But in C++ it is possible (and desirable) to initialise variables with a particular
	value at the same time as declaring them. Hence we can write

	<div class="example">double PI = 3.1415926535;</div>

	Furthermore, we can specify that a variable's value cannot be altered during the execution of a program with the
	reserved word <span class="highlight">const</span>.
</div>

<div class="textblock">
	Constants of type "int" may also be declared with an enumeration statement. For example, the declaration
	<div class="code">enum { MON, TUES, WED, THURS, FRI, SAT, SUN };</div>
	is shorthand for
	<div class="code">
		const int MON = 0; <br> const int TUES = 1; <br> const int WED = 2; <br> const int THURS = 3; <br>
		const int FRI = 4; <br> const int SAT = 5; <br> const int SUN = 6; <br>
	</div>
	By default, members of an "enum" list are given the values 0, 1, 2, etc., but when "enum" members are explicitly
	initialised, uninitialised members of the list have values that are one more than the previous value on the list:
	<div class="code">enum { MON = 1, TUES, WED, THURS, FRI, SAT = -1, SUN };</div>
	In this case, the value of "FRI" is 5, and the value of "SUN" is 0.

</div>