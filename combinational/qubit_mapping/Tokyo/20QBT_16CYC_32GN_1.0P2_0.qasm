OPENQASM 2.0;

include "qelib1.inc";

qreg q[20];

cx q[17], q[11];
cx q[10], q[15];
cx q[7], q[16];
cx q[11], q[6];
t q[18];
h q[6];
h q[6];
y q[18];
z q[6];
h q[12];
y q[7];
cx q[6], q[14];
z q[14];
z q[11];
cx q[0], q[1];
cx q[14], q[6];
cx q[3], q[1];
cx q[6], q[14];
h q[6];
cx q[9], q[14];
cx q[6], q[14];
y q[9];
cx q[6], q[11];
cx q[13], q[10];
cx q[6], q[9];
cx q[6], q[14];
h q[9];
cx q[19], q[3];
y q[6];
y q[6];
z q[13];
cx q[16], q[8];
