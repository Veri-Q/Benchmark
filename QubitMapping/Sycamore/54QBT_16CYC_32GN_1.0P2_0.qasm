OPENQASM 2.0;

include "qelib1.inc";

qreg q[54];

cx q[13], q[21];
cx q[21], q[13];
cx q[42], q[51];
h q[16];
h q[17];
cx q[13], q[2];
cx q[2], q[13];
z q[2];
y q[2];
y q[48];
t q[26];
cx q[5], q[43];
z q[2];
cx q[2], q[31];
y q[31];
h q[43];
cx q[31], q[2];
cx q[31], q[3];
cx q[3], q[31];
y q[27];
cx q[3], q[31];
cx q[43], q[20];
t q[8];
x q[3];
cx q[53], q[32];
t q[52];
cx q[25], q[9];
x q[3];
h q[3];
z q[12];
t q[29];
z q[16];
