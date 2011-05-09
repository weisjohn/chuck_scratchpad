// du.ck is the ChucK learning document
/* 
	* last updated: 2011.05.09

	* THINGS WE HAVE LEARNED
	* to live code, run ChucK in a separate console and then pass it commands	
	* we've got C-style block comments
	* each line ends with a semi-colon
*/


// variables and value-type lessons
// initial stuff that I learned while stepping through - http://chuck.cs.princeton.edu/doc/language/overview.html

	// int is a datatype
	int foo; 

	// "chuck" the value 5 into foo
	5 => foo;

	 // prints "5 :  (int)"
	<<<foo>>>;

	// float is a data type
	// add the two inline-floats and "chuck" it into x
	1.0 + 2.5 => float x;
	<<<x>>>;

	// an integer is automatically coerced into a float
	<<<foo + x>>>;

	// does the same thing
	<<< (x + foo) == (foo + x) >>>;
	
	
	// special value "now"
	<<< now >>>;
	
	// chucking now into an instance of a ChucKian time value type
	now => time t1;
	
	<<< t1 >>>;
	
	// does t1 == now ?
	<<< now == t1 >>>;
	
	
