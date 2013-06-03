<div class="textblock">
	We could modify the above program to print out the whole ASCII table of characters using a <span class="highlight">for
		loop</span>. The "for loop" is an example of a repetition statement - we will discuss these in more detail later. The general
	syntax is:
	<div class="code">
		for (initialisation; repetition_condition ; update) <br> { <br> <span class="indent1">Statement1; <br>
			... <br> ... <br> StatementN;
		</span><br> }
	</div>
	C++ executes such statements as follows:
	<ul>
		<li>It executes the initialisation statement.</li>
		<li>It checks to see if repetition_condition is true. If it isn't, it finishes with the "for loop" completely.
			But if it is, it executes each of the statements Statement1 ... StatementN in turn, and then executes the expression
			update. After this, it goes back to the beginning of step (2) again.</li>
	</ul>
</div>

<div class="textblock">
	We can also 'manipulate' the output to produce the hexadecimal code. Hence to print out the ASCII table, the program
	above can be modified to:
	<div class="code">
		#include < iostream > <br> using namespace std; <br> <br> int main() <br> { <br> <span
			class="indent1"> int number; <br> char character; <br> <br> for (number = 32 ; number <= 126 ;
			number = number + 1) <br> { <br> <br> <span class="indent2"> character = number; <br> cout
				<< "The character '" << character; <br> cout << "' is represented as the number "; <br> cout << dec <<
				number << " decimal or " << hex<< number<< " hex.\n";
		</span> <br> }
		</span> <br> <br> return 0; <br> }
	</div>
	which produces the output:

	<div class="code">
		The character ' ' is represented as the number 32 decimal or 20 hex. <br> The character '!' is represented as the
		number 33 decimal or 21 hex. <br> ... <br> ... <br> The character '}' is represented as the number 125
		decimal or 7D hex. <br> The character '~' is represented as the number 126 decimal or 7E hex.
	</div>
</div>