OPENQASM 2.0;
include "qelib1.inc";
qreg q[13];
x q[10];
z q[10];
x q[9];
x q[8];
x q[7];
z q[7];
z q[4];
x q[3];
z q[3];
h q[12];
sdg q[12];
h q[12];
sdg q[12];
h q[11];
cx q[11],q[12];
h q[11];
sdg q[11];
cx q[12],q[11];
sdg q[11];
cx q[11],q[12];
h q[10];
cx q[10],q[12];
h q[10];
swap q[11],q[10];
h q[11];
h q[9];
sdg q[9];
cx q[9],q[12];
cx q[9],q[10];
h q[9];
cx q[12],q[9];
cx q[10],q[9];
cx q[9],q[12];
swap q[11],q[9];
h q[8];
cx q[8],q[12];
cx q[8],q[11];
h q[8];
cx q[12],q[8];
cx q[10],q[8];
cx q[9],q[8];
sdg q[8];
cx q[8],q[12];
cx q[8],q[11];
swap q[9],q[8];
h q[7];
sdg q[7];
cx q[7],q[11];
cx q[7],q[9];
h q[7];
cx q[11],q[7];
cx q[8],q[7];
sdg q[7];
cx q[12],q[7];
cx q[11],q[7];
cx q[10],q[7];
cx q[7],q[12];
swap q[8],q[7];
h q[6];
cx q[6],q[11];
cx q[6],q[10];
cx q[6],q[9];
h q[6];
cx q[11],q[6];
cx q[8],q[6];
sdg q[6];
cx q[9],q[6];
cx q[8],q[6];
sdg q[6];
cx q[6],q[11];
cx q[6],q[8];
h q[5];
cx q[5],q[8];
cx q[5],q[7];
h q[5];
cx q[12],q[5];
cx q[10],q[5];
cx q[8],q[5];
sdg q[5];
cx q[11],q[5];
cx q[10],q[5];
cx q[9],q[5];
cx q[8],q[5];
cx q[7],q[5];
cx q[5],q[12];
cx q[5],q[10];
cx q[5],q[7];
h q[4];
cx q[4],q[8];
cx q[4],q[6];
cx q[4],q[5];
h q[4];
cx q[12],q[4];
cx q[11],q[4];
cx q[9],q[4];
cx q[8],q[4];
cx q[6],q[4];
cx q[5],q[4];
sdg q[4];
cx q[12],q[4];
cx q[11],q[4];
cx q[10],q[4];
cx q[5],q[4];
cx q[4],q[11];
cx q[4],q[6];
h q[3];
cx q[3],q[9];
cx q[3],q[8];
cx q[3],q[7];
cx q[3],q[6];
h q[3];
cx q[12],q[3];
cx q[10],q[3];
cx q[4],q[3];
sdg q[3];
cx q[12],q[3];
cx q[8],q[3];
cx q[6],q[3];
cx q[4],q[3];
cx q[3],q[10];
cx q[3],q[9];
cx q[3],q[5];
cx q[3],q[4];
h q[2];
sdg q[2];
cx q[2],q[12];
cx q[2],q[8];
cx q[2],q[7];
cx q[2],q[6];
cx q[2],q[4];
cx q[2],q[3];
h q[2];
cx q[8],q[2];
cx q[7],q[2];
cx q[6],q[2];
sdg q[2];
cx q[12],q[2];
cx q[8],q[2];
cx q[6],q[2];
cx q[5],q[2];
cx q[4],q[2];
cx q[3],q[2];
cx q[2],q[12];
cx q[2],q[9];
cx q[2],q[6];
cx q[2],q[5];
cx q[2],q[4];
h q[1];
sdg q[1];
cx q[1],q[12];
cx q[1],q[11];
cx q[1],q[9];
cx q[1],q[7];
cx q[1],q[5];
cx q[1],q[2];
h q[1];
cx q[11],q[1];
cx q[10],q[1];
cx q[9],q[1];
cx q[8],q[1];
cx q[7],q[1];
cx q[6],q[1];
cx q[2],q[1];
sdg q[1];
cx q[12],q[1];
cx q[10],q[1];
cx q[9],q[1];
cx q[8],q[1];
cx q[7],q[1];
cx q[6],q[1];
cx q[4],q[1];
cx q[3],q[1];
sdg q[1];
cx q[1],q[11];
cx q[1],q[10];
cx q[1],q[8];
cx q[1],q[3];
swap q[2],q[1];
h q[0];
cx q[0],q[12];
cx q[0],q[10];
cx q[0],q[8];
cx q[0],q[4];
cx q[0],q[2];
cx q[0],q[1];
h q[0];
cx q[11],q[0];
cx q[9],q[0];
cx q[6],q[0];
cx q[3],q[0];
cx q[1],q[0];
sdg q[0];
cx q[11],q[0];
cx q[3],q[0];
cx q[0],q[12];
cx q[0],q[8];
cx q[0],q[5];