OPENQASM 2.0;

include "qelib1.inc";

qreg q[20];

t q[12];
cx q[5], q[1];
cx q[12], q[15];
cx q[15], q[10];
cx q[17], q[4];
cx q[7], q[13];
t q[15];
h q[6];
cx q[0], q[14];
cx q[15], q[12];
cx q[0], q[6];
cx q[16], q[10];
cx q[15], q[12];
cx q[14], q[0];
cx q[15], q[17];
y q[17];
t q[19];
x q[17];
cx q[8], q[16];
y q[18];
cx q[17], q[12];
x q[7];
x q[17];
cx q[15], q[12];
cx q[11], q[1];
cx q[19], q[9];
h q[17];
y q[5];
cx q[17], q[10];
cx q[2], q[11];
cx q[15], q[12];
t q[17];
cx q[17], q[12];
z q[12];
cx q[19], q[9];
z q[11];
cx q[12], q[13];
t q[12];
x q[9];
cx q[12], q[13];
y q[10];
h q[12];
cx q[12], q[13];
cx q[12], q[17];
y q[9];
t q[17];
cx q[2], q[3];
t q[11];
z q[17];
y q[17];
cx q[12], q[13];
t q[17];
cx q[17], q[4];
cx q[4], q[17];
cx q[18], q[16];
y q[4];
cx q[14], q[9];
z q[5];
cx q[4], q[17];
cx q[17], q[10];
cx q[6], q[12];
cx q[2], q[5];
cx q[10], q[5];
y q[3];
