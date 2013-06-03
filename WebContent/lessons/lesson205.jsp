<div class="textblock">
	However, declaring a variable to be of type "char" rather than type "int" makes an important difference as regards the
	type of input the program expects, and the format of the output it produces. For example, the program
	<div class="code">
		#include < iostream > <br> using namespace std; <br> <br> int main() <br> { <br> <span
			class="indent1"> int number; <br> char character; <br> <br> cout << "Type in a character:\n"; <br>
			cin >> character; <br> <br> number = character; <br> <br> cout << "The character '" << character;
			<br> cout << "' is represented as the number "; <br> cout << number << " in the computer.\n"; <br> <br>
			return 0;
		</span> <br> }
	</div>
	produces output such as:
	<div class="code">
		Type in a character:<br> 9<br> The character '9' is represented as the number 57 in the computer.<br>
	</div>
</div>