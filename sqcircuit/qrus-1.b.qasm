OPENQASM 3.0;

include "stdgates.inc";

// sequential quantum circuit
// input variables: q
// internal variables: p
// output variables: x

def sqcircuit() qubit:q, qubit:p
{
	h q;
	t q;
	h q;
	ctrl @ z q, p;
	inv @ t q;
	h q;
	t q;
	ctrl @ z q, p;
	h q;
	t q;
	h q;
	z p;
	bit result;
	result = measure q;
}

qubit p;

// initialize p
reset p;
h p;
// p = |+>

// // the following shows how to apply sqcircuit for one step
// qubit q;
// 
// // prepare q
// reset q;
// 
// // apply the sequential quantum circuit
// sqcircuit(q, p);
// 
// // measurement outcomes
// x = measure q;
// print(x);
