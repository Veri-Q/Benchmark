OPENQASM 2.0;

include "qelib1.inc";

qreg q[16];

h q[9];
t q[0];
cx q[10], q[1];
y q[9];
h q[10];
h q[6];
y q[9];
cx q[13], q[3];
cx q[9], q[4];
cx q[4], q[11];
x q[6];
cx q[13], q[3];
z q[11];
cx q[11], q[4];
cx q[8], q[7];
z q[11];
