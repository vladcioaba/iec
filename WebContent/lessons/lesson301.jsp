<div class="textblock">A natural way to solve large problems is to break them down into a series of sub-problems,
	which can be solved more-or-less independently and then combined to arrive at a complete solution. In programming, this
	methodology reflects itself in the use of sub-programs, and in C++ all sub-programs are called functions (corresponding
	to both "functions" and "procedures" in Pascal and some other programming languages).</div>
<div class="textblock">
	We have already been using sub-programs. For example, in the program which generated a table of square roots, we used
	the following <span class="highligh">for loop</span>:
	<div class="code">
		... <br> #include< cmath > <br> ... <br> ... <br> for (number = 1 ; number <= 10 ; number = number
		+ 1) <br> { <br> <span class="indent1">cout.width(20); <br> cout << number << sqrt(number) <<
			"\n";
		</span><br> } <br> ... <br> ...
	</div>
	The function "sqrt(...)" is defined in a sub-program accessed via the library file cmath (old header style math.h). The
	sub-program takes "number", uses a particular algorithm to compute its square root, and then returns the computed value
	back to the program. We don't care what the algorithm is as long as it gives the correct result. It would be ridiculous
	to have to explicitly (and perhaps repeatedly) include this algorithm in the "main" program.
</div>

<div class="textblock">In this chapter we will discuss how the programmer can define his or her own functions. At
	first, we will put these functions in the same file as "main". Later we will see how to place different functions in
	different files.</div>