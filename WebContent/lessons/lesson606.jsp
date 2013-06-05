
<div class="textblock">Arrays can have more than one dimension. In this section we briefly examine the use of
	two-dimensional arrays to represent two-dimensional structures such as screen bitmaps or nxm matrices of integers.</div>

<div class="textblock">
	A bitmap consists of a grid of Boolean values representing the state of the dots or pixels on a screen. "True" means
	"on" or that the pixel is white; "False" means "off" or the pixel is black. Let's suppose the screen is 639 pixels wide
	and 449 pixels high. We can declare the corresponding array as follows:

	<div class="code">
		enum Logical {False, True}; </br> const int SCREEN_HEIGHT = 449; </br> const int SCREEN_WIDTH = 639; </br> Logical
		screen[SCREEN_HEIGHT][SCREEN_WIDTH];
	</div>

	References to individual data elements within the array "screen" simply use two index values. For example, the
	following statement assigns the value "True" to the cell (pixel) in row 4, column 2 of the array.

	<div class="code">screen[3][1] = True;</div>
</div>

<div class="textblock">

	All of the discussion in Section 6.2 about one-dimensional arrays as parameters in functions also applies to
	two-dimensional arrays, but with one additional peculiarity. In function declarations and in the heads of function
	definitions, the size of the first dimension of a multidimensional array parameter is not given (inside the "[]"
	brackets), but the sizes of all the other dimensions are given. Hence, for example, the following is a correct form for
	a function which sets all the screen pixels to black:

	<div class="code">
		void clear_bitmap(Logical bitmap[][SCREEN_WIDTH], int screen_height) </br> { </br> <span class="indent1"> for (int row =
			0 ; row < screen_height ; row++) </br> <span class="indent2">for (int column = 0 ; column < SCREEN_WIDTH; column++)
				</br> bitmap[row][column] = False;
		</span>
		</span> </br> }
	</div>

</div>




