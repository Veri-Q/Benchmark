OPENQASM 3.0;
include "stdgates.inc";
qreg q[14];
h q[0];
s q[1];
h q[2];
h q[3];
s q[5];
h q[5];
h q[7];
s q[8];
h q[10];
s q[12];
h q[12];
s q[12];
s q[13];
swap q[5],q[0];
cx q[5],q[3];
cx q[5],q[13];
cx q[0],q[5];
cx q[1],q[7];
cx q[1],q[9];
cx q[1],q[10];
cx q[5],q[1];
h q[1];
cx q[1],q[5];
cx q[8],q[2];
cx q[2],q[5];
cx q[5],q[8];
cx q[12],q[11];
cx q[11],q[5];
cx q[5],q[12];
h q[2];
h q[3];
s q[4];
s q[6];
s q[7];
h q[8];
h q[9];
h q[11];
h q[13];
s q[13];
cx q[0],q[2];
cx q[0],q[9];
cx q[3],q[0];
cx q[8],q[0];
cx q[11],q[0];
cx q[4],q[6];
cx q[4],q[7];
cx q[4],q[10];
cx q[4],q[12];
cx q[0],q[4];
h q[4];
cx q[4],q[0];
cx q[13],q[1];
cx q[1],q[0];
cx q[0],q[13];
s q[1];
h q[1];
s q[1];
h q[2];
h q[3];
s q[6];
s q[10];
h q[11];
s q[12];
h q[13];
swap q[3],q[1];
cx q[3],q[2];
cx q[3],q[4];
cx q[3],q[10];
cx q[3],q[13];
cx q[8],q[3];
cx q[1],q[3];
cx q[9],q[12];
cx q[3],q[9];
h q[9];
cx q[9],q[3];
cx q[11],q[6];
cx q[6],q[3];
cx q[3],q[11];
s q[1];
h q[1];
h q[2];
s q[4];
s q[6];
h q[7];
s q[8];
s q[10];
swap q[2],q[1];
cx q[2],q[4];
cx q[2],q[7];
cx q[2],q[8];
cx q[2],q[10];
cx q[2],q[13];
cx q[9],q[1];
cx q[2],q[9];
h q[9];
cx q[9],q[2];
cx q[12],q[6];
cx q[6],q[2];
cx q[2],q[12];
h q[1];
s q[1];
s q[4];
s q[6];
h q[8];
h q[11];
s q[12];
h q[13];
swap q[4],q[1];
cx q[4],q[10];
cx q[4],q[13];
cx q[4],q[1];
cx q[6],q[7];
cx q[6],q[8];
cx q[6],q[9];
cx q[6],q[11];
cx q[6],q[12];
cx q[4],q[6];
h q[6];
cx q[6],q[4];
h q[1];
s q[6];
h q[6];
s q[7];
h q[8];
s q[10];
h q[10];
s q[11];
h q[11];
s q[13];
h q[13];
swap q[10],q[1];
cx q[8],q[10];
cx q[1],q[10];
cx q[10],q[9];
h q[9];
cx q[9],q[10];
cx q[7],q[6];
cx q[6],q[10];
cx q[10],q[7];
cx q[13],q[11];
cx q[11],q[10];
cx q[10],q[13];
s q[1];
h q[1];
h q[6];
s q[6];
h q[9];
s q[12];
h q[12];
s q[12];
s q[13];
swap q[13],q[1];
cx q[13],q[9];
cx q[7],q[1];
cx q[13],q[7];
h q[7];
cx q[7],q[13];
cx q[12],q[6];
cx q[6],q[13];
cx q[13],q[12];
h q[1];
h q[7];
h q[8];
s q[11];
h q[11];
s q[12];
h q[12];
s q[12];
swap q[8],q[1];
cx q[8],q[7];
cx q[1],q[8];
cx q[12],q[11];
cx q[11],q[8];
cx q[8],q[12];
s q[7];
h q[7];
s q[7];
swap q[1],q[6];
cx q[9],q[1];
cx q[12],q[7];
cx q[7],q[1];
cx q[1],q[12];
h q[6];
s q[9];
h q[9];
s q[12];
cx q[7],q[12];
cx q[12],q[11];
h q[11];
cx q[11],q[12];
cx q[9],q[6];
cx q[6],q[12];
cx q[12],q[9];
h q[7];
h q[9];
s q[11];
h q[11];
cx q[7],q[9];
h q[9];
cx q[9],q[7];
cx q[11],q[6];
cx q[6],q[7];
cx q[7],q[11];
s q[6];
h q[6];
s q[9];
h q[9];
swap q[9],q[6];
cx q[9],q[11];
cx q[6],q[9];
s q[11];
h q[11];
swap q[11],q[6];
cx q[6],q[11];
h q[6];
s q[6];
z q[1];
z q[2];
x q[3];
y q[5];
x q[6];
x q[7];
y q[8];
z q[10];
z q[11];
x q[12];
y q[13];
