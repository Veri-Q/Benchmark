OPENQASM 3.0;

include "stdgates.inc";

gate coin q
{
	h q;
}

gate shift0 p1, p2, p3, p4, p5, p6
{
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p2, p3, p4, p5, p6, p1;
	ctrl @ ctrl @ ctrl @ ctrl @ x p3, p4, p5, p6, p2;
	ctrl @ ctrl @ ctrl @ x p4, p5, p6, p3;
	ctrl @ ctrl @ x p5, p6, p4;
	ctrl @ x p6, p5;
	x p6;
}

gate shift1 p1, p2, p3, p4, p5, p6
{
	x p6;
	ctrl @ x p6, p5;
	ctrl @ ctrl @ x p5, p6, p4;
	ctrl @ ctrl @ ctrl @ x p4, p5, p6, p3;
	ctrl @ ctrl @ ctrl @ ctrl @ x p3, p4, p5, p6, p2;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p2, p3, p4, p5, p6, p1;
}

gate toss c, p1, p2, p3, p4, p5, p6
{
	x c;
	ctrl @ shift0 c, p1, p2, p3, p4, p5, p6;
	x c;
	ctrl @ shift1 c, p1, p2, p3, p4, p5, p6;
}

// sequential quantum circuit
// input variables: d
// internal variables: c, p1, p2, p3, p4, p5, p6
// output variables: x

def sqcircuit() qubit:d, qubit:c, qubit:p1, qubit:p2, qubit:p3, qubit:p4, qubit:p5, qubit:p6
{
	coin c;
	toss c, p1, p2, p3, p4, p5, p6;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p1, p2, p3, p4, p5, p6, d;
	bit result;
	result = measure d;
}

qubit c, p1, p2, p3, p4, p5, p6;

// initialize c, p1, p2, p3, p4, p5, p6
reset c;
x c;
reset p1;
x p1;
reset p2;
x p2;
reset p3;
x p3;
reset p4;
x p4;
reset p5;
x p5;
reset p6;
// |1>c|1>p1|1>p2|1>p3|1>p4|1>p5|0>p6

// // the following shows how to apply sqcircuit for one step
// qubit d;
// 
// // prepare d
// reset d;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, c, p1, p2, p3, p4, p5, p6);
// 
// // measurement outcomes
// x = measure d;
// print(x);
