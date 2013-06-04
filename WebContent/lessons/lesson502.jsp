
<div class="textblock">
	We have already been introduced to "for" loops in Lecture 2 and to "while" loops in Lecture 4. Notice that any "for"
	loop can be re-written as a "while" loop. For example, this pro program from Lecture 2:

	<div class="code">
		#include < iostream > </br> using namespace std; </br> </br> int main() </br> { </br> <span class="indent1"> int number; </br> char
			character; </br> </br> for (number = 32 ; number <= 126 ; number = number + 1) </br> { </br> <span class="indent2"> character =
				number; </br> cout << "The character '" << character; </br> cout << "' is represented as the number "; </br> cout << number << " in
				the computer.\n"; </br>
		</span></br> } </br> </br> return 0; </br>
		</span> </br> }
	</div>
	can be written equivalently as:
	<div class="code">
		#include < iostream > </br> using namespace std; </br> </br> int main() </br> { </br> <span class="indent1"> int number; </br> char
			character; </br> </br> number = 32; </br> while (number <= 126) </br> { </br> <span class="indent2"> character = number; </br> cout << "The
				character '" << character; </br> cout << "' is represented as the number "; </br> cout << number << " in the computer.\n"; </br>
				number++; </br>
		</span></br> } </br>
		</span> </br> return 0; </br> }
	</div>
	Moreover, any "while" loop can be trivially re-written as a "for" loop - we could for example replace the line:

	<div class="example">while (number <= 126)</div>

	with the line:

	<div class="example">for ( ; number <= 126 ; )</div>

	in the program above.
</div>

<div class="textblock">
	There is a third kind of "loop" statement in C++ called a "do ... while" loop. This differs from "for" and "while"
	loops in that the statement(s) inside the {} braces are always executed once, before the repetition condition is even
	checked. "Do ... while" loops are useful, for example, to ensure that the program user's keyboard input is of the
	correct format:
	<div class="code">
		... </br> ... </br> do </br> { </br> <span class="indent1"> cout << "Enter the candidate's score: "; </br> cin >> candidate_score; </br> if
			(candidate_score > 100 || candidate_score < 0) </br> <span class="indent2">cout << "Score must be between 0 and
				100.\n";</span> </br>
		</span> </br> } </br> while (candidate_score > 100 || candidate_score < 0); </br> ... </br> ...
	</div>

	This avoids the need to repeat the input prompt and statement, which would be necessary in the equivalent "while" loop:
	<div class="code">
		... </br> ... </br> cout << "Enter the candidate's score: "; </br> cin >> candidate_score; </br> while (candidate_score > 100 ||
		candidate_score < 0) </br> { </br> <span class="indent1"> cout << "Score must be between 0 and 100.\n"; </br> cout << "Enter
			the candidate's score: "; </br> cin >> candidate_score; </br>
		</span> } </br> ... </br> ...
	</div>
</div>

