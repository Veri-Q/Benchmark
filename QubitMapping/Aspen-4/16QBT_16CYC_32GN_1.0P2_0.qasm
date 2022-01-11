OPENQASM 2.0;

include "qelib1.inc";

qreg q[16];

cx q[11], q[6];
cx q[3], q[2];
cx q[6], q[5];
cx q[8], q[1];
x q[12];
cx q[5], q[14];
cx q[2], q[9];
h q[0];
h q[14];
z q[0];
z q[14];
cx q[14], q[12];
cx q[12], q[14];
y q[1];
cx q[12], q[15];
z q[12];
t q[6];
y q[12];
cx q[12], q[15];
cx q[7], q[4];
x q[15];
cx q[7], q[0];
y q[8];
cx q[15], q[1];
z q[12];
x q[1];
cx q[4], q[7];
cx q[1], q[15];
cx q[2], q[9];
t q[10];
h q[3];
y q[15];
