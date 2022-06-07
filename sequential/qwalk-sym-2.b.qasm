OPENQASM 3.0;

include "stdgates.inc";

gate coin q
{
	h q;
}

gate shift0 p1, p2
{
	ctrl @ x p2, p1;
	x p2;
}

gate shift1 p1, p2
{
	x p2;
	ctrl @ x p2, p1;
}

gate toss c, p1, p2
{
	x c;
	ctrl @ shift0 c, p1, p2;
	x c;
	ctrl @ shift1 c, p1, p2;
}

// sequential quantum circuit
// input variables: d
// internal variables: c, p1, p2
// output variables: x

def sqcircuit() qubit:d, qubit:c, qubit:p1, qubit:p2
{
	coin c;
	toss c, p1, p2;
	ctrl @ ctrl @ x p1, p2, d;
	bit result;
	result = measure d;
}

qubit c, p1, p2;

// initialize c, p1, p2
reset c;
x c;
reset p1;
reset p2;
x p2;
// |1>c|0>p1|1>p2

// // the following shows how to apply sqcircuit for one step
// qubit d;
// 
// // prepare d
// reset d;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, c, p1, p2);
// 
// // measurement outcomes
// x = measure d;
// print(x);
