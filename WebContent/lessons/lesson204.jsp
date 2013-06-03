<div class="textblock">
	Variables of type <span class="highlight">char</span> are used to store character data. In standard C++, data of type
	"char" can only be a single character (which could be a blank space). These characters come from an available character
	set which can differ from computer to computer. However, it always includes upper and lower case letters of the
	alphabet, the digits 0, ... , 9, and some special symbols such as #, £, !, +, -, etc. Perhaps the most common
	collection of characters is the ASCII character set.
</div>

<div class="textblock">Character constants of type "char" must be enclosed in single quotation marks when used in
	a program, otherwise they will be misinterpreted and may cause a compilation error or unexpected program behaviour. For
	example, "'A'" is a character constant, but "A" will be interpreted as a program variable. Similarly, "'9'" is a
	character, but "9" is an integer.</div>

<div class="textblock">
	There is, however, an important (and perhaps somewhat confusing) technical point concerning data of type "char".
	Characters are represented as integers inside the computer. Hence the data type "char" is simply a subset of the data
	type "int". We can even do arithmetic with characters. For example, the following expression is evaluated as true on
	any computer using the ASCII character set:

	<div class="example">'9' - '0' == 57 - 48 == 9</div>

	The ASCII code for the character '9' is decimal 57 (hexadecimal 39) and the ASCII code for the character '0' is decimal
	48 (hexadecimal 30) so this equation is stating that

	<div class="example">57(dec) - 48(dec) == 39(hex) - 30(hex) == 9</div>

	It is often regarded as better to use the ASCII codes in their hexadecimal form.
</div>