OPENQASM 2.0;

include "qelib1.inc";

qreg q[54];

y q[43];
cx q[28], q[25];
x q[20];
h q[43];
h q[19];
cx q[43], q[8];
cx q[19], q[53];
y q[41];
cx q[43], q[46];
y q[38];
cx q[46], q[10];
cx q[46], q[35];
cx q[24], q[48];
z q[35];
t q[35];
x q[3];
