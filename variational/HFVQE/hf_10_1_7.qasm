// Generated from Cirq v1.0.0

OPENQASM 2.0;
include "qelib1.inc";


// Qubits: [q(0, 0), q(0, 1), q(0, 2), q(0, 3), q(0, 4), q(0, 5), q(0, 6), q(0, 7), q(0, 8), q(0, 9)]
qreg q[10];


x q[0];
x q[1];
x q[2];
x q[3];
x q[4];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.5) q[4];
rz(pi*-0.5) q[5];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.0) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.3478993542) q[5];
rz(pi*-0.3478993542) q[6];
rz(pi*1.4652248319) q[3];
rz(pi*-0.4652248319) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.0) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

rz(pi*1.0) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.5) q[6];
rz(pi*-0.5) q[7];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.5) q[4];
rz(pi*-0.5) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

rz(pi*1.5) q[2];
rz(pi*-0.5) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.0) q[6];

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.0) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.2919916405) q[7];
rz(pi*-0.2919916405) q[8];
rz(pi*1.0) q[2];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.1645074189) q[5];
rz(pi*-0.1645074189) q[6];

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

// Gate: ISWAP**0.5
cx q[1],q[2];
h q[1];
cx q[2],q[1];
t q[1];
cx q[2],q[1];
tdg q[1];
h q[1];
cx q[1],q[2];

rz(pi*0.8927116292) q[3];
rz(pi*0.1072883708) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.0) q[7];

// Gate: ISWAP**0.5
cx q[8],q[9];
h q[8];
cx q[9],q[8];
t q[8];
cx q[9],q[8];
tdg q[8];
h q[8];
cx q[8],q[9];

rz(pi*0.9845345918) q[1];
rz(pi*0.0154654082) q[2];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.0) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

rz(pi*0.7758907239) q[8];
rz(pi*0.2241092761) q[9];

// Gate: ISWAP**0.5
cx q[1],q[2];
h q[1];
cx q[2],q[1];
t q[1];
cx q[2],q[1];
tdg q[1];
h q[1];
cx q[1],q[2];

rz(pi*1.0) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.5) q[6];
rz(pi*-0.5) q[7];

// Gate: ISWAP**0.5
cx q[8],q[9];
h q[8];
cx q[9],q[8];
t q[8];
cx q[9],q[8];
tdg q[8];
h q[8];
cx q[8],q[9];

rz(pi*1.0) q[1];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.5) q[4];
rz(pi*-0.5) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

rz(pi*1.0) q[8];

// Gate: ISWAP**0.5
cx q[0],q[1];
h q[0];
cx q[1],q[0];
t q[0];
cx q[1],q[0];
tdg q[0];
h q[0];
cx q[0],q[1];

rz(pi*1.5) q[2];
rz(pi*-0.5) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.0) q[6];

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

rz(pi*1.3498211679) q[0];
rz(pi*-0.3498211679) q[1];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.0) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.5) q[7];
rz(pi*-0.5) q[8];

// Gate: ISWAP**0.5
cx q[0],q[1];
h q[0];
cx q[1],q[0];
t q[0];
cx q[1],q[0];
tdg q[0];
h q[0];
cx q[0],q[1];

rz(pi*1.0) q[2];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*0.9912481755) q[5];
rz(pi*0.0087518245) q[6];

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

rz(pi*1.0) q[0];

// Gate: ISWAP**0.5
cx q[1],q[2];
h q[1];
cx q[2],q[1];
t q[1];
cx q[2],q[1];
tdg q[1];
h q[1];
cx q[1],q[2];

rz(pi*0.8079154887) q[3];
rz(pi*0.1920845113) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.0) q[7];
rz(pi*1.5) q[1];
rz(pi*-0.5) q[2];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.0) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

// Gate: ISWAP**0.5
cx q[1],q[2];
h q[1];
cx q[2],q[1];
t q[1];
cx q[2],q[1];
tdg q[1];
h q[1];
cx q[1],q[2];

rz(pi*1.0) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.4815428542) q[6];
rz(pi*-0.4815428542) q[7];
rz(pi*1.0) q[1];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.5) q[4];
rz(pi*-0.5) q[5];

// Gate: ISWAP**0.5
cx q[6],q[7];
h q[6];
cx q[7],q[6];
t q[6];
cx q[7],q[6];
tdg q[6];
h q[6];
cx q[6],q[7];

rz(pi*1.048225461) q[2];
rz(pi*-0.048225461) q[3];

// Gate: ISWAP**0.5
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.0) q[6];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*1.0) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.0) q[2];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.5) q[5];
rz(pi*-0.5) q[6];
rz(pi*1.5) q[3];
rz(pi*-0.5) q[4];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

// Gate: ISWAP**0.5
cx q[3],q[4];
h q[3];
cx q[4],q[3];
t q[3];
cx q[4],q[3];
tdg q[3];
h q[3];
cx q[3],q[4];

rz(pi*1.0) q[5];
rz(pi*1.0) q[3];
