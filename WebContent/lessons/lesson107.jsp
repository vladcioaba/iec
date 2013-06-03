<div class="textblock">
	As far as the C++ compiler is concerned, the following program is exactly the same as the program in <span
		class="highlight">Section 1.3</span>:
	<div class="code">#include < iostream > using namespace std; int main() { int year_now, age_now, another_year,
		another_age; cout << "Enter the current year then press RETURN.\n"; cin >> year_now; cout << "Enter your current age
		in years.\n"; cin >> age_now; cout << "Enter the year for which you wish to know your age.\n"; cin >> another_year;
		another_age = another_year - (year_now - age_now); if (another_age >= 0) { cout << "Your age in " << another_year <<
		": "; cout << another_age << "\n"; } else { cout << "You weren't even born in "; cout << another_year << "!\n"; }
		return 0; }</div>
	However, the lack of program comments, spaces, new lines and indentation makes this program unacceptable. There is much
	more to developing a good programming style than learning to lay out programs properly, but it is a good start! <br>
	Be consistent with your program layout, and make sure the indentation and spacing reflects the logical structure of
	your program. It is also a good idea to pick meaningful names for variables; "year_now", "age_now", "another_year " and
	"another__age " are better names than "y_n", "a_n", "a_y" and "a_a", and much better than "w", "x", "y" and "z".
	Remember that your programs might need modification by other programmers at a later date.
</div>

<div class="textblock">We have briefly and informally introduced a number of topics in this lecture: variables and
	types, input and output, assignment, and conditional statements ("if statements"). We will go into each of these topics
	more formally and in more detail later in the course.</div>
