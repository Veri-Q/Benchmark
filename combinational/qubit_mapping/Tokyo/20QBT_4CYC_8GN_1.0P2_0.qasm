OPENQASM 2.0;

include "qelib1.inc";

qreg q[20];

cx q[10], q[16];
h q[6];
cx q[10], q[9];
y q[9];
h q[16];
y q[9];
cx q[4], q[10];
x q[16];
