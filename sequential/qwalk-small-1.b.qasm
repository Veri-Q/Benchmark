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
def sqcircuit() qubit:d, qubit:c, qubit:p1, qubit:p2 -> bit
{
	coin c;
	toss c, p1, p2;
	ctrl @ ctrl @ x p1, p2, d;
	bit result;
	result = measure d;
	return result;
}

qubit c, p1, p2;

// initialize c, p1, p2
reset c;
reset p1;
reset p2;
x p1;
// |0>c|1>p1|0>p2

// apply sqcircuit one time step
// bit result;
// qubit d;
// reset d;
// result = sqcircuit(d, c, p1, p2);
// print(result);
