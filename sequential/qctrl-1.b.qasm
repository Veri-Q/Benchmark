OPENQASM 3.0;

include "stdgates.inc";

// sequential quantum circuit
// input variables: d, q1, q2
// internal variables: p1, p2, p3
// output variables: x1, x2, x3

def sqcircuit() qubit:d, qubit:q1, qubit:q2, qubit:p1, qubit:p2, qubit:p3
{
	// ctrl(4) @ x q1, q2, p1, p2, p3;
	ctrl @ ctrl @ ctrl @ ctrl @ x q1, q2, p1, p2, p3;

	// negctrl(2) @ q1, q2, p1;
	x q1;
	x q2;
	ctrl @ ctrl @ h q1, q2, p1;
	x q1;
	x q2;

	// negctrl @ ctrl @ h q1, q2, p2;
	x q1;
	ctrl @ ctrl @ h q1, q2, p2;
	x q1;

	// ctrl @ negctrl @ q1, q2, p3;
	x q2;
	ctrl @ ctrl @ h q1, q2, p3;
	x q2;

	cx p1, d;

	bit result[3];
	result[0] = measure d;
	result[1] = measure q1;
	result[2] = measure q2;
}

qubit p1, p2, p3;

// initialize p1, p2, p3
reset p1;
reset p2;
reset p3;
x p3;
// |0>p1|0>p2|1>p3

// // the following shows how to apply sqcircuit for one step
// qubit d;
// qubit q1;
// qubit q2;
// 
// // prepare d, q1, q2
// reset d;
// reset q1;
// reset q2;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, q1, q2, p1, p2, p3);
// 
// // measurement outcomes
// x1 = measure d;
// x2 = measure q1;
// x3 = measure q2;
// print(x1);
// print(x2);
// print(x3);
