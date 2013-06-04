
<%
	int noLesson = Integer.parseInt((String) session.getAttribute("noLesson"));
	switch (noLesson) {
	case 101: {
		out.print("1.1 Introduction to C++");
		break;
	}
	case 102: {
		out.print("1.2 Comments");
		break;
	}
	case 103: {
		out.print("1.3 Hello World!");
		break;
	}
	case 104: {
		out.print("1.4 Breakdown");
		break;
	}
	case 105: {
		out.print("1.5 Input & Output");
		break;
	}
	case 106: {
		out.print("1.6 If and Else");
		break;
	}
	case 107: {
		out.print("1.7 Clean up your code");
		break;
	}
	case 201: {
		out.print("2.1 Identifiers");
		break;
	}
	case 202: {
		out.print("2.2 Integers");
		break;
	}
	case 203: {
		out.print("2.3 Real Numbers. Type casting");
		break;
	}
	case 204: {
		out.print("2.4 Characters");
		break;
	}
	case 205: {
		out.print("2.5 Characters");
		break;
	}
	case 206: {
		out.print("2.6 \"For\" statement");
		break;
	}
	case 207: {
		out.print("2.7 Declarations. Constants. Enumerations");
		break;
	}
	case 208: {
		out.print("2.8 Where to put Constant and Variable Declarations");
		break;
	}
	case 209: {
		out.print("2.9 Boolean Expressions and Operators");
		break;
	}
	case 301: {
		out.print("3.1  The Need for Sub-programs");
		break;
	}
	case 302: {
		out.print("3.2 User-defined Functions");
		break;
	}
	case 303: {
		out.print("3.3 Value and Reference Parameters");
		break;
	}
	case 304: {
		out.print("3.4 Reference Parameters");
		break;
	}
	case 305: {
		out.print("3.5 Polymorphism and Overloading");
		break;
	}
	case 306: {
		out.print("3.6 Procedural Abstraction and Good Programming Style");
		break;
	}
	case 307: {
		out.print("3.7 Splitting Programs into Different Files");
		break;
	}
	case 308: {
		out.print("3.8 Splitting Programs into Different Files");
		break;
	}
	case 401: {
		out.print("4.1 Why Use Files?");
		break;
	}
	case 402: {
		out.print("4.2 Streams.");
		break;
	}
	case 403: {
		out.print("4.3 Creating Streams.");
		break;
	}
	case 404: {
		out.print("4.4  Connecting and Disconnecting Streams to Files.");
		break;
	}
	case 405: {
		out.print("4.5 Checking for Failure with File Commands.");
		break;
	}
	case 406: {
		out.print("4.6. Character Input and Output.");
		break;
	}
	case 407: {
		out.print("4.7 Checking for the End of an Input File.");
		break;
	}
	case 408: {
		out.print("4.8 Streams as Arguments in Functions.");
		break;
	}
	case 501: {
		out.print("5.1 Boolean Values, Expressions and Functions.");
		break;
	}
	case 502: {
		out.print("5.2 \"For\", \"While\" and \"Do ... While\" Loops.");
		break;
	}
	case 503: {
		out.print("5.3 Multiple Selection and Switch Statements.");
		break;
	}
	case 504: {
		out.print("5.4 Summary.");
		break;
	}
	}
%>
