OPENQASM 2.0;

include "qelib1.inc";

qreg q[54];

z q[50];
t q[35];
cx q[50], q[8];
z q[50];
x q[51];
t q[50];
cx q[10], q[25];
cx q[32], q[1];
