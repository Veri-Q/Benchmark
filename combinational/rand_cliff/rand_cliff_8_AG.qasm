OPENQASM 3.0;
include "stdgates.inc";
qreg q[8];
z q[7];
x q[6];
x q[5];
z q[5];
x q[4];
z q[4];
x q[3];
x q[2];
x q[1];
z q[0];
h q[7];
sdg q[7];
h q[7];
sdg q[7];
h q[6];
sdg q[6];
cx q[6],q[7];
h q[6];
swap q[7],q[6];
h q[7];
h q[5];
sdg q[5];
cx q[5],q[7];
cx q[5],q[6];
h q[5];
cx q[7],q[5];
sdg q[5];
cx q[7],q[5];
cx q[6],q[5];
swap q[6],q[5];
h q[4];
sdg q[4];
cx q[4],q[7];
cx q[4],q[6];
cx q[4],q[5];
h q[4];
cx q[7],q[4];
cx q[6],q[4];
sdg q[4];
cx q[7],q[4];
cx q[6],q[4];
cx q[5],q[4];
cx q[4],q[6];
swap q[5],q[4];
h q[3];
sdg q[3];
cx q[3],q[6];
cx q[3],q[5];
cx q[3],q[4];
h q[3];
cx q[6],q[3];
sdg q[3];
cx q[6],q[3];
cx q[4],q[3];
cx q[3],q[7];
cx q[3],q[5];
swap q[4],q[3];
h q[2];
sdg q[2];
cx q[2],q[6];
cx q[2],q[5];
h q[2];
cx q[5],q[2];
cx q[4],q[2];
sdg q[2];
cx q[7],q[2];
cx q[5],q[2];
cx q[4],q[2];
cx q[3],q[2];
cx q[2],q[6];
cx q[2],q[5];
swap q[3],q[2];
h q[1];
sdg q[1];
cx q[1],q[5];
cx q[1],q[4];
cx q[1],q[2];
h q[1];
cx q[5],q[1];
cx q[4],q[1];
cx q[3],q[1];
cx q[2],q[1];
sdg q[1];
cx q[7],q[1];
cx q[6],q[1];
cx q[4],q[1];
cx q[3],q[1];
cx q[1],q[7];
cx q[1],q[4];
h q[0];
sdg q[0];
cx q[0],q[7];
cx q[0],q[6];
cx q[0],q[5];
cx q[0],q[3];
h q[0];
cx q[7],q[0];
cx q[3],q[0];
cx q[1],q[0];
sdg q[0];
cx q[7],q[0];
cx q[3],q[0];
sdg q[0];
cx q[0],q[7];
cx q[0],q[6];
cx q[0],q[4];
cx q[0],q[3];
swap q[1],q[0];
