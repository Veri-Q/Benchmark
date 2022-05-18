OPENQASM 2.0;

include "qelib1.inc";

qreg q[53];

x q[12];
h q[25];
cx q[38], q[34];
cx q[12], q[34];
h q[48];
t q[34];
y q[34];
h q[27];
z q[34];
cx q[34], q[38];
cx q[38], q[34];
cx q[38], q[21];
z q[34];
z q[38];
cx q[20], q[42];
cx q[51], q[2];
cx q[5], q[40];
x q[38];
cx q[38], q[34];
cx q[37], q[2];
cx q[38], q[21];
cx q[23], q[6];
y q[30];
t q[38];
cx q[33], q[1];
x q[38];
y q[16];
x q[28];
cx q[38], q[30];
cx q[0], q[29];
h q[38];
x q[40];
