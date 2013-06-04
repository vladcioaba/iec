
<div class="textblock">
	In this lecture we will look more closely at branch and loop statements such as "for" and "while" loops and "if ...
	else" statements. All these constructs involve the evaluation of one or more logical (or "Boolean") expressions, and so
	we begin by looking at different ways to write such expressions. </br>
	</br> As we have seen, in reality C++ represents "True" as the integer 1, and "False" as 0. However, expressions such as
	<div class="example">
		condition1 == 1</br> or</br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; condition2 == 0
	</div>
	aren't particularly clear - it would be better to be able to follow our intuition and write
	<div class="example">
		condition1 == True</br> and</br> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; condition2 == False
	</div>
</div>

<div class="textblock">
	Indeed, we can now use the identifier "Logical" in exactly the same way as we use the identifiers "int", "char", etc.
	In particular, we can write functions which return a value of type "Logical". The following example program takes a
	candidate's age and test score, and reports whether the candidate has passed the test. It uses the following criteria:
	candidates between 0 and 14 years old have a pass mark of 50%, 15 and 16 year olds have a pass mark of 55%, over 16's
	have a pass mark of 60%:

	<div class="code">
		#include < iostream > </br> using namespace std; </br> </br> enum Logical {False, True}; </br> </br> Logical acceptable(int age, int score); </br> </br>
		/* START OF MAIN PROGRAM */ </br> int main() </br> { </br> <span class="indent1"> int candidate_age, candidate_score; </br> </br> cout
			<< "Enter the candidate's age: "; </br> cin >> candidate_age; </br> cout << "Enter the candidate's score: "; </br> cin >>
			candidate_score; </br> </br> if (acceptable(candidate_age, candidate_score)) </br> <span class="indent2">cout << "This
				candidate passed the test.\n";</span> </br> <span class="indent1"> else </br> <span class="indent2">cout << "This
					candidate failed the test.\n";</span> </br>
		</span> </br> return 0;
		</span> </br> } </br> /* END OF MAIN PROGRAM */ </br> </br> /* FUNCTION TO EVALUATE IF TEST SCORE IS ACCEPTABLE */ </br> Logical acceptable(int age,
		int score) </br> { </br> <span class="indent1"> if (age <= 14 && score >= 50) </br> <span class="indent2">return True;</span>
			</br> else if (age <= 16 && score >= 55) </br> <span class="indent2">return True;</span> </br> else if (score >= 60) </br> <span
			class="indent2">return True;</span> </br> else </br> <span class="indent2">return False; </span> </br> <span class="indent1">
				</br> } </br> /*END OF FUNCTION */ 
	</div>
</div>
