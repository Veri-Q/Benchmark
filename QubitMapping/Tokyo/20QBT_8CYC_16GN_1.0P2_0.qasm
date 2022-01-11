OPENQASM 2.0;

include "qelib1.inc";

qreg q[20];

cx q[0], q[13];
cx q[17], q[18];
t q[10];
x q[9];
cx q[13], q[2];
cx q[19], q[0];
z q[13];
cx q[13], q[12];
y q[12];
h q[12];
cx q[14], q[9];
cx q[19], q[10];
y q[12];
h q[11];
cx q[12], q[13];
cx q[14], q[6];
