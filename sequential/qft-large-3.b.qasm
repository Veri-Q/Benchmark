OPENQASM 3.0;

include "stdgates.inc";

// cannot compile by qcor
// cu1() is defined in standard OPENQASM
gate qft9 p1, p2, p3, p4, p5, p6, p7, p8, p9
{
	h p1;
	cu1(pi/2) p1 p2;
	cu1(pi/4) p1 p3;
	cu1(pi/8) p1 p4;
	cu1(pi/16) p1 p5;
	cu1(pi/32) p1 p6;
	cu1(pi/64) p1 p7;
	cu1(pi/128) p1 p8;
	cu1(pi/256) p1 p9;
	h p2;
	cu1(pi/2) p2 p3;
	cu1(pi/4) p2 p4;
	cu1(pi/8) p2 p5;
	cu1(pi/16) p2 p6;
	cu1(pi/32) p2 p7;
	cu1(pi/64) p2 p8;
	cu1(pi/128) p2 p9;
	h p3;
	cu1(pi/2) p3 p4;
	cu1(pi/4) p3 p5;
	cu1(pi/8) p3 p6;
	cu1(pi/16) p3 p7;
	cu1(pi/32) p3 p8;
	cu1(pi/64) p3 p9;
	h p4;
	cu1(pi/2) p4 p5;
	cu1(pi/4) p4 p6;
	cu1(pi/8) p4 p7;
	cu1(pi/16) p4 p8;
	cu1(pi/32) p4 p9;
	h p5;
	cu1(pi/2) p5 p6;
	cu1(pi/4) p5 p7;
	cu1(pi/8) p5 p8;
	cu1(pi/16) p5 p9;
	h p6;
	cu1(pi/2) p6 p7;
	cu1(pi/4) p6 p8;
	cu1(pi/8) p6 p9;
	h p7;
	cu1(pi/2) p7 p8;
	cu1(pi/4) p7 p9;
	h p8;
	cu1(pi/2) p8 p9;
	h p9;
}

// sequential quantum circuit
// input variables: d, q
// internal variables: p1, p2, p3, p4, p5, p6, p7, p8, p9
// output variables: md, mq

def sqcircuit() qubit:d, qubit:q, qubit:p1, qubit:p2, qubit:p3, qubit:p4, qubit:p5, qubit:p6, qubit:p7, qubit:p8, qubit:p9
{
	// negctrl @ qft9 q, p1, p2, p3, p4, p5, p6, p7, p8, p9
	x q;
	ctrl @ qft9 q, p1, p2, p3, p4, p5, p6, p7, p8, p9;
	x q;
	
	ctrl @ t q, p1;
	ctrl @ x p3, d;
	
	bit md, mq;
	md = measure d;
	mq = measure q;
}

qubit p1, p2, p3, p4, p5, p6, p7, p8, p9;

// initialize p1, p2, p3, p4, p5, p6, p7, p8, p9;
reset p1;
x p1;
reset p2;
reset p3;
reset p4;
reset p5;
reset p6;
reset p7;
reset p8;
reset p9;
// |1>p1|0>p2|0>p3|0>p4|0>p5|0>p6|0>p7|0>p8|0>p9

// // the following shows how to apply sqcircuit for one step
// qubit d, q;
// 
// // prepare d
// reset d;
// reset q;
// 
// // apply the sequential quantum circuit
// sqcircuit(d, q, p1, p2, p3, p4, p5, p6, p7, p8, p9);
// 
// // measurement outcomes
// md = measure d;
// mq = measure q;
