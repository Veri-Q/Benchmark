OPENQASM 2.0;

include "qelib1.inc";

qreg q[54];

y q[37];
z q[33];
t q[16];
cx q[37], q[35];
cx q[45], q[9];
cx q[10], q[48];
h q[42];
y q[37];
z q[37];
cx q[37], q[35];
cx q[1], q[29];
cx q[18], q[10];
h q[35];
cx q[44], q[23];
cx q[35], q[24];
cx q[30], q[12];
cx q[43], q[52];
cx q[35], q[5];
h q[14];
z q[35];
z q[35];
cx q[1], q[29];
y q[35];
cx q[35], q[45];
cx q[45], q[53];
cx q[18], q[10];
cx q[45], q[35];
cx q[35], q[5];
cx q[48], q[27];
x q[11];
y q[5];
x q[5];
cx q[42], q[21];
x q[14];
t q[18];
h q[5];
cx q[18], q[10];
z q[5];
x q[5];
cx q[5], q[6];
cx q[3], q[7];
cx q[53], q[0];
cx q[5], q[9];
cx q[3], q[7];
z q[9];
h q[41];
h q[9];
cx q[35], q[45];
cx q[9], q[52];
cx q[43], q[11];
t q[2];
cx q[52], q[31];
h q[52];
t q[52];
cx q[52], q[53];
cx q[23], q[44];
h q[53];
cx q[13], q[29];
cx q[4], q[17];
cx q[53], q[52];
y q[41];
cx q[17], q[7];
cx q[3], q[12];
cx q[53], q[0];