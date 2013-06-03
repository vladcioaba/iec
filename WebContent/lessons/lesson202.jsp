<div class="textblock">
	C++ requires that all variables used in a program be given a data type. We have already seen the data type <span
		class="highlight">int</span>. Variables of this type are used to represent integers (whole numbers). Declaring a
	variable to be of type int signals to the compiler that it must associate enough memory with the variable's identifier
	to store an integer value or integer values as the program executes. But there is a (system dependent) limit on the
	largest and smallest integers that can be stored. Hence C++ also supports the data types short int and long int which
	represent, respectively, a smaller and a larger range of integer values than int. Adding the prefix <span
		class="highlight">unsigned </span> to any of these types means that you wish to represent non-negative integers only.
	For example, the declaration
	<div class="example">unsigned short int year_now, age_now, another_year, another_age;</div>
	reserves memory for representing four relatively small non-negative integers.
</div>

<div class="textblock">
	Some rules have to be observed when writing integer values in programs:
	<ul>
		<li>Decimal points cannot be used; although 26 and 26.0 have the same value, "26.0" is not of type "int".</li>
		<li>Commas cannot be used in integers, so that (for example) <span class="highlight">23,897</span> has to be
			written as "<span class="highlight">23897</span>".
		</li>
		<li>Integers cannot be written with leading zeros. The compiler will, for example, interpret "011" as an octal
			(base 8) number, with value 9.</li>
	</ul>
</div>