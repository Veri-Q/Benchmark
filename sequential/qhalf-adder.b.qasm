OPENQASM 3.0;

include "stdgates.inc";

// sequential quantum circuit
// input variables: c, a
// internal variables: b
// output variables: mc, ma

def sqcircuit() qubit:c, qubit:a, qubit:b
{
	ctrl @ ctrl @ x a, b, c;
	ctrl @ x a, b;
	bit mc, ma;
	mc = measure c;
	ma = measure a;
}

qubit b;

// initialize b
reset b;
// b = |0>

// // the following shows how to apply sqcircuit for one step
// qubit c, a;
// 
// // prepare c, a
// reset c, a;
// 
// // apply the sequential quantum circuit
// sqcircuit(c, a, b);
// 
// // measurement outcomes
// mc = measure c;
// ma = measure a;
// print(mc, ma);
