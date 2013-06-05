
<div class="textblock">We have already been using string values, such as ""Enter age: "", in programs involving
	output to the screen. In C++ you can store and manipulate such values in string variables, which are really just arrays
	of characters, but used in a particular way.</div>

<div class="textblock">
	<span class="highlight">The Sentinel String Character '\0'</span></br>
	</br> The key point is that, to use the special functions associated with strings, string values can only be stored in
	string variables whose length is at least 1 greater than the length (in characters) of the value. This is because extra
	space must be left at the end to store the sentinel string character "'\0'" which marks the end of the string value.
	For example, the following two arrays both contain all the characters in the string value ""Enter age: "", but only the
	array on the left contains a proper string representation.
	<div class="example">
		<img src="Images/RobMillerF6-5-1.GIF"></img>
	</div>

</div>

<div class="textblock">In other words, although both "phrase" and "list" are arrays of characters, only "phrase"
	is big enough to contain the string value ""Enter age: "". We don't care what characters are stored in the variables
	"phrase[12]" and "phrase[13]", because all the string functions introduced below ignore characters after the "'\0'".</div>

<div class="textblock">
	<span class="highlight">String Variable Declarations and Assignments</span></br>
	</br> String variables can be declared just like other arrays:

	<div class="code">char phrase[14];</div>

	String arrays can be initialised or partially initialised at the same time as being declared, using a list of values
	enclosed in "{}" braces (the same is true of arrays of other data types). For example, the statement

	<div class="code">char phrase[14] = {'E','n','t','e','r',' ','a','g','e',':',' ','\0'};</div>

	both declares the array "phrase" and initialises it to the state in Figure 6.5.1. The statement

	<div class="code">char phrase[14] = "Enter age: ";</div>

	is equivalent. If the "14" is omitted, an array will be created just large enough to contain both the value ""Enter
	age: "" and the sentinel character "'\0'", so that the two statements

	<div class="code">
		char phrase[] = {'E','n','t','e','r',' ','a','g','e',':',' ','\0'};</br> char phrase[] = "Enter age: ";
	</div>

	are equivalent both to each other and to the statement

	<div class="code">char phrase[12] = "Enter age: ";</div>

	However, it is important to remember that string variables are arrays, so we cannot just make assignments and
	comparisons using the operators "=" and "==". We cannot, for example, simply write

	<div class="code">phrase = "You typed: ";</div>

	Instead, we can use a special set of functions for string assignment and comparison.
</div>

<div class="textblock">
	<span class="highlight">Summary</span></br>
	</br> In this lecture we have seen how a list of variables of the same data type may be represented as an array. We have
	seen how arrays may be passed as parameters to functions, and we have seen a simple algorithm for sorting arrays. We
	have also briefly discussed the notion of a two-dimensional array. Finally, we have seen that C++ provides some special
	functions to manipulate strings, which are simply arrays of characters always including a special sentinel character.

</div>





