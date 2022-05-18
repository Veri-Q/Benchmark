OPENQASM 2.0;

include "qelib1.inc";

qreg q[16];

y q[2];
cx q[0], q[3];
h q[2];
cx q[10], q[8];
y q[13];
cx q[4], q[9];
cx q[2], q[5];
t q[5];
