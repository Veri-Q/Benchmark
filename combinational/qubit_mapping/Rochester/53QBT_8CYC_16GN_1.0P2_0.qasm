OPENQASM 2.0;

include "qelib1.inc";

qreg q[53];

z q[44];
x q[45];
cx q[44], q[32];
h q[9];
h q[32];
z q[17];
z q[32];
cx q[32], q[38];
cx q[38], q[10];
y q[34];
cx q[31], q[25];
h q[10];
t q[23];
h q[10];
cx q[25], q[42];
cx q[17], q[3];
