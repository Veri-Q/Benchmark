OPENQASM 3.0;

include "stdgates.inc";

gate coin q
{
	h q;
}

gate shift0 p1, p2, p3, p4, p5, p6, p7, p8
{
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p2, p3, p4, p5, p6, p7, p8, p1;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p3, p4, p5, p6, p7, p8, p2;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p4, p5, p6, p7, p8, p3;
	ctrl @ ctrl @ ctrl @ ctrl @ x p5, p6, p7, p8, p4;
	ctrl @ ctrl @ ctrl @ x p6, p7, p8, p5;
	ctrl @ ctrl @ x p7, p8, p6;
	ctrl @ x p8, p7;
	x p8;
}

gate shift1 p1, p2, p3, p4, p5, p6, p7, p8
{
	x p8;
	ctrl @ x p8, p7;
	ctrl @ ctrl @ x p7, p8, p6;
	ctrl @ ctrl @ ctrl @ x p6, p7, p8, p5;
	ctrl @ ctrl @ ctrl @ ctrl @ x p5, p6, p7, p8, p4;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p4, p5, p6, p7, p8, p3;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p3, p4, p5, p6, p7, p8, p2;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p2, p3, p4, p5, p6, p7, p8, p1;
}

gate toss c, p1, p2, p3, p4, p5, p6, p7, p8
{
	x c;
	ctrl @ shift0 c, p1, p2, p3, p4, p5, p6, p7, p8;
	x c;
	ctrl @ shift1 c, p1, p2, p3, p4, p5, p6, p7, p8;
}

// sequential quantum circuit
// input variables: d
// internal variables: c, p1, p2, p3, p4, p5, p6, p7, p8
// output variables: x

def sqcircuit() qubit:d, qubit:c, qubit:p1, qubit:p2, qubit:p3, qubit:p4, qubit:p5, qubit:p6, qubit:p7, qubit:p8
{
	coin c;
	toss c, p1, p2, p3, p4, p5, p6, p7, p8;
	ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ ctrl @ x p1, p2, p3, p4, p5, p6, p7, p8, d;
	bit result;
	result = measure d;
}

qubit c, p1, p2, p3, p4, p5, p6, p7, p8;

// initialize c, p1, p2, p3, p4, p5, p6, p7, p8
reset c;
reset p1;
reset p2;
reset p3;
reset p4;
reset p5;
reset p6;
reset p7;
reset p8;
// |0>c|0>p1|0>p2|0>p3|0>p4|0>p5|0>p6|0>p7|0>p8

// // the following shows how to apply sqcircuit for one step
// qubit d;
// 
// // prepare d
// reset d;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, c, p1, p2, p3, p4, p5, p6, p7, p8);
// 
// // measurement outcomes
// x = measure d;
// print(x);
