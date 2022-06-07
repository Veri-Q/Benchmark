OPENQASM 3.0;

include "stdgates.inc";

// cannot compile by qcor
// cu1() is defined in standard OPENQASM
gate qft4 p1, p2, p3, p4
{
	h p1;
	cu1(pi/2) p1, p2;
	cu1(pi/4) p1, p3;
	cu1(pi/8) p1, p4;
	h p2;
	cu1(pi/2) p2, p3;
	cu1(pi/4) p2, p4;
	h p3;
	cu1(pi/2) p3, p4;
	h p4;
}

// sequential quantum circuit
// input variables: d, q
// internal variables: p1, p2, p3, p4
// output variables: md, mq

def sqcircuit() qubit:d, qubit:q, qubit:p1, qubit:p2, qubit:p3, qubit:p4
{
	// negctrl @ qft4 q, p1, p2, p3, p4
	x q;
	ctrl @ qft4 q, p1, p2, p3, p4;
	x q;
	
	ctrl @ t q, p1;
	ctrl @ x p3, d;
	
	bit md, mq;
	md = measure d;
	mq = measure q;
}

qubit p1, p2, p3, p4;

// initialize p1, p2, p3, p4;
reset p1;
reset p2;
reset p3;
reset p4;
// |0>p1|0>p2|0>p3|0>p4

// // the following shows how to apply sqcircuit for one step
// qubit d, q;
// 
// // prepare d
// reset d;
// reset q;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, q, p1, p2, p3, p4);
// 
// // measurement outcomes
// md = measure d;
// mq = measure q;
