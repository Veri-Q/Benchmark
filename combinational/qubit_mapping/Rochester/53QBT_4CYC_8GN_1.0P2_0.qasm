OPENQASM 2.0;

include "qelib1.inc";

qreg q[53];

cx q[40], q[4];
cx q[42], q[27];
cx q[4], q[40];
h q[40];
t q[2];
cx q[9], q[34];
x q[40];
cx q[50], q[16];
