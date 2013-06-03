<div class="textblock">
	Variables of type <span class="highlight">float</span> are used to store real numbers. Plus and minus signs for data of
	type "float" are treated exactly as with integers, and trailing zeros to the right of the decimal point are ignored.
	Hence "+523.5", "523.5" and "523.500" all represent the same value. The computer also accepts real numbers in
	floating-point form (or "scientific notation"). Hence 523.5 could be written as "5.235e+02" (i.e. 5.235 x 10 x 10), and
	-0.0034 as "-3.4e-03". In addition to "float", C++ supports the types "double" and "long double", which give
	increasingly precise representation of real numbers, but at the cost of more computer memory.
</div>

<div class="textblock">
	Sometimes it is important to guarantee that a value is stored as a real number, even if it is in fact a whole number. A
	common example is where an arithmetic expression involves division. When applied to two values of type int, the
	division operator "/" signifies integer division, so that (for example) 7/2 evaluates to 3. In this case, if we want an
	answer of 3.5, we can simply add a decimal point and zero to one or both numbers - "7.0/2", "7/2.0" and "7.0/2.0" all
	give the desired result. However, if both the numerator and the divisor are variables, this trick is not possible.
	Instead, we have to use a type cast. For example, we can convert "7" to a value of type double using the expression
	"static_cast
	<double>(7)". Hence in the expression
	<div class="example">
		answer = static_cast
		<double>(numerator) / denominator 
	</div>
	the "/" will always be interpreted as real-number division, even when both "numerator" and "denominator" have integer
	values. Other type names can also be used for type casting. For example, "static_cast<int>(14.35)" has an integer
	value of 14. 
</div>