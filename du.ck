// du.ck is the ChucK learning document
/* 
	* last updated: 2011.05.09

	* THINGS WE HAVE LEARNED
	* to live code, run ChucK in a separate console and then pass it commands	
	* we've got C-style block comments
	* each line ends with a semi-colon
*/


// variables and value-type lessons
// learned while stepping through - http://chuck.cs.princeton.edu/doc/language/overview.html

	//// numbers

	int foo;    // create an int
	
	5 => foo;   // "chuck" the value 5 into foo
	<<<foo>>>;  // prints "5 :  (int)"

	// add the two inline-floats and "chuck" the sum into x
	1.0 + 2.5 => float x; 
	<<<x>>>; 

	<<<foo + x>>>;   	                // an integer are coerced higher float
	<<< (x + foo) == (foo + x) >>>;	    // order does not matter
	
	//// times
	
	<<< now >>>;     // special value "now"
	now => time t1;  // chuck now into an instance of a ChucKian time value type
	<<< now == t1 >>>;  	// does t1 == now ?

// learned while watching the 2007 lecture video - http://www.youtube.com/watch?v=2rpk461T6l4

	//  =>   this is called the "chuck" operator
	//  =^   this is called the "up-chuck" operator 
	//       allows for unit analysis... 
	
						// instantiate a Sine Oscillator
	SinOsc s => dac;	// the dac - digital analog converter...
	while(true) {
		Std.rand2f(30, 1000) => s.freq;
		100::ms +=> now;   // advance time by 100::ms
	}
	

	
	
// learned while stepping through - http://chuck.cs.princeton.edu/doc/language/type.html

	//// durations
	
	4::second => dur bar;   // create a duration "bar" and chucking 5 seconds
	<<< bar >>>;
	
	4::bar => dur measure;  // create a duration "measure" and chuck 4 bars
	<<< measure >>>;
	
	<<< 4*bar == measure >>>;  // true
	
	
	//// complex numbers
	
	
	<<< #(2,3) >>>;          // inline complex number of 2 + 3i
	#(2, 3) => complex c;    // create a complex number and chuck 2 + 3i into it
	//<<< #(2, 3) == c >>>;  // can't compare complex numbers... this is the first weirdness that i've found