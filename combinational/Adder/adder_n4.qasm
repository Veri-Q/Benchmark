//Adder with 1 qubits input.
OPENQASM 2.0;
include "qelib1.inc";
qreg qr[4];
ccx qr[1],qr[2],qr[3];
cx qr[1],qr[2];
ccx qr[0],qr[2],qr[3];
cx qr[0],qr[2];
