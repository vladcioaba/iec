<div class="code">
	#include < iostream > <br> <br> using namespace std; <br> <br> int main()<br> {<br> <span
		class="indent1">int year_now, age_now, another_year, another_age; </span> <br> <br> <span class="indent2">cout
		<< "Enter the current year then press RETURN.\n";</span> <br> <span class="indent2">cin >> year_now;</span> <br> <br>
	<span class="indent2">cout << "Enter your current age in years.\n";</span> <br> <span class="indent2">cin
		>> age_now;</span> <br> <br> <span class="indent2">cout << "Enter the year for which you wish to know your
		age.\n";</span> <br> <span class="indent2">cin >> another_year;</span> <br> <br> <span class="indent1">another_age
		= another_year - (year_now - age_now);</span><br> <br> <span class="indent1">if (another_age >= 0)</span> <br>
	<span class="indent1">{ </span><br> <span class="indent2">cout << "Your age in " << another_year << ": ";</span><br>
	<span class="indent2"> cout << another_age << "\n";</span><br> <span class="indent1">}</span> <br> <br>
	<span class="indent1">else </span><br> <span class="indent1">{</span> <br> <span class="indent2"> cout
		<< "You weren't even born in ";</span><br> <span class="indent2"> cout << another_year << "!\n"; </span><br> <span
		class="indent1">}</span><br> <br> return 0; <br> }
</div>