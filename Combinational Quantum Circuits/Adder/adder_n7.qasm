//Adder with 2 qubits input.
OPENQASM 2.0;
include "qelib1.inc";
qreg qr[7];
ccx qr[1],qr[2],qr[3];
cx qr[1],qr[2];
ccx qr[4],qr[5],qr[6];
cx qr[4],qr[5];
ccx qr[0],qr[2],qr[3];
ccx qr[3],qr[5],qr[6];
cx qr[0],qr[2];
cx qr[3],qr[5];
