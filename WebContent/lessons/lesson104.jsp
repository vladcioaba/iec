<div class="textblock">
	This program illustrates several general features of all C++ programs. It begins (after the comment lines) with the
	statement:

	<div class="example">#include < iostream ></div>

	This statement is called an include directive. It tells the compiler and the linker that the program will need to be
	linked to a library of routines that handle input from the keyboard and output to the screen (specifically the cin and
	cout statements that appear later). The header file "iostream" contains basic information about this library. You will
	learn much more about libraries of code later in this course.
</div>

<div class="textblock">
	After the include directive is the line:
	<div class="example">using namespace std;</div>

	This statement is called a using directive. The latest versions of the C++ standard divide names (e.g. cin and cout)
	into subcollections of names called namespaces. This particular using directive says the program will be using names
	that have a meaning defined for them in the std namespace (in this case the iostream header defines meanings for cout
	and cin in the std namespace).
	</p>
</div>

<div class="textblock">
	Some C++ compilers do not yet support namespaces. In this case you can use the older form of the include directive
	(that does not require a using directive, and places all names in a single global namespace):

	<div class="example">#include < iostream.h ></div>

	Much of the code you encounter in industry will probably be written using this older style for headers.
</div>

<div class="textblock">
	Because the program is short, it is easily packaged up into a single list of program statements and commands. After the
	include and using directives, the basic structure of the program is:

	<div class="code">
		int main() <br> { <br> <span class="indent1">First statement; </span><br> <span class="indent1">...</span><br>
		<span class="indent1">...</span><br> <span class="indent1">Last statement;</span><br> <span class="indent1"></span><br>
		<span class="indent1">return 0;</span><br> }
	</div>
</div>

<div class="textblock">All C++ programs have this basic "top-level" structure. Notice that each statement in the
	body of the program ends with a semicolon. In a well-designed large program, many of these statements will include
	references or calls to sub-programs, listed after the main program or in a separate file. These sub-programs have
	roughly the same outline structure as the program here, but there is always exactly one such structure called main.
	Again, you will learn more about sub-programs later in the course.</div>

<div class="textblock">
	The program ends with the line:

	<div class="example">return 0;</div>

	This means "return the value 0 to the computer's operating system to signal that the program has completed
	successfully". More generally, return statements signal that the particular sub-program has finished, and return a
	value, along with the flow of control, to the program level above. More about this later.
</div>

<div class="textblock">
	Our example program uses four variables:

	<div class="example">year_now, age_now, another_year and another_age</div>

	Program variables are not like variables in mathematics. They are more like symbolic names for "pockets of computer
	memory" which can be used to store different values at different times during the program execution. These variables
	are first introduced in our program in the variable declaration:

	<div class="code">int year_now, age_now, another_year, another_age;</div>

	This signals to the compiler that it should set aside enough memory to store four variables of type "int" (integer)
	during the rest of the program execution. Hence variables should always be declared before being used in a program.
	Indeed, it is considered good style and practice to declare all the variables to be used in a program or sub-program at
	the beginning. Variables can be one of several different types in C++, and we will discuss variables and types at some
	length later.
</div>