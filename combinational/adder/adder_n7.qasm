//Adder with 2 qubits input.
OPENQASM 2.0;
include "qelib1.inc";
qreg q[7];
ccx q[1],q[2],q[3];
cx q[1],q[2];
ccx q[4],q[5],q[6];
cx q[4],q[5];
ccx q[0],q[2],q[3];
ccx q[3],q[5],q[6];
cx q[0],q[2];
cx q[3],q[5];
