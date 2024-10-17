// Generated from Cirq v1.0.0

OPENQASM 2.0;
include "qelib1.inc";


// Qubits: [q(0, 0), q(0, 1), q(0, 2), q(0, 3), q(0, 4), q(0, 5), q(0, 6), q(0, 7), q(0, 8), q(0, 9), q(0, 10), q(0, 11)]
qreg q[12];


x q[0];
x q[1];
x q[2];
x q[3];
x q[4];
x q[5];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.5) q[5];
rz(pi*-0.5) q[6];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

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
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.4622835723) q[6];
rz(pi*-0.4622835723) q[7];
rz(pi*1.3327316539) q[4];
rz(pi*-0.3327316539) q[5];

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

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

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

rz(pi*0.8590354927) q[8];
rz(pi*0.1409645073) q[9];
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

rz(pi*0.5583516923) q[6];
rz(pi*0.4416483077) q[7];

// Gate: ISWAP**0.5
cx q[8],q[9];
h q[8];
cx q[9],q[8];
t q[8];
cx q[9],q[8];
tdg q[8];
h q[8];
cx q[8],q[9];

// Gate: ISWAP**0.5
cx q[2],q[3];
h q[2];
cx q[3],q[2];
t q[2];
cx q[3],q[2];
tdg q[2];
h q[2];
cx q[2],q[3];

rz(pi*0.9830033588) q[4];
rz(pi*0.0169966412) q[5];

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
cx q[9],q[10];
h q[9];
cx q[10],q[9];
t q[9];
cx q[10],q[9];
tdg q[9];
h q[9];
cx q[9],q[10];

rz(pi*0.9860081846) q[2];
rz(pi*0.0139918154) q[3];

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

rz(pi*1.5) q[9];
rz(pi*-0.5) q[10];

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
cx q[9],q[10];
h q[9];
cx q[10],q[9];
t q[9];
cx q[10],q[9];
tdg q[9];
h q[9];
cx q[9],q[10];

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

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

rz(pi*1.0) q[9];

// Gate: ISWAP**0.5
cx q[10],q[11];
h q[10];
cx q[11],q[10];
t q[10];
cx q[11],q[10];
tdg q[10];
h q[10];
cx q[10],q[11];

// Gate: ISWAP**0.5
cx q[1],q[2];
h q[1];
cx q[2],q[1];
t q[1];
cx q[2],q[1];
tdg q[1];
h q[1];
cx q[1],q[2];

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

rz(pi*0.6503796872) q[10];
rz(pi*0.3496203128) q[11];
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

rz(pi*1.133130185) q[8];
rz(pi*-0.133130185) q[9];

// Gate: ISWAP**0.5
cx q[10],q[11];
h q[10];
cx q[11],q[10];
t q[10];
cx q[11],q[10];
tdg q[10];
h q[10];
cx q[10],q[11];

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

rz(pi*1.2728900838) q[6];
rz(pi*-0.2728900838) q[7];

// Gate: ISWAP**0.5
cx q[8],q[9];
h q[8];
cx q[9],q[8];
t q[8];
cx q[9],q[8];
tdg q[8];
h q[8];
cx q[8],q[9];

rz(pi*1.0) q[10];
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

rz(pi*0.8697084416) q[4];
rz(pi*0.1302915584) q[5];

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
cx q[9],q[10];
h q[9];
cx q[10],q[9];
t q[9];
cx q[10],q[9];
tdg q[9];
h q[9];
cx q[9],q[10];

// Gate: ISWAP**0.5
cx q[0],q[1];
h q[0];
cx q[1],q[0];
t q[0];
cx q[1],q[0];
tdg q[0];
h q[0];
cx q[0],q[1];

rz(pi*1.2654636425) q[2];
rz(pi*-0.2654636425) q[3];

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

rz(pi*1.5) q[9];
rz(pi*-0.5) q[10];
rz(pi*1.4310134143) q[0];
rz(pi*-0.4310134143) q[1];

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
cx q[9],q[10];
h q[9];
cx q[10],q[9];
t q[9];
cx q[10],q[9];
tdg q[9];
h q[9];
cx q[9],q[10];

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

rz(pi*1.5) q[5];
rz(pi*-0.5) q[6];

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

rz(pi*1.0) q[9];
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

rz(pi*0.885854458) q[8];
rz(pi*0.114145542) q[9];

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

rz(pi*1.3052723484) q[6];
rz(pi*-0.3052723484) q[7];

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

rz(pi*1.0712690551) q[4];
rz(pi*-0.0712690551) q[5];

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
rz(pi*1.1272070858) q[2];
rz(pi*-0.1272070858) q[3];

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

rz(pi*1.5) q[7];
rz(pi*-0.5) q[8];
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

// Gate: ISWAP**0.5
cx q[7],q[8];
h q[7];
cx q[8],q[7];
t q[7];
cx q[8],q[7];
tdg q[7];
h q[7];
cx q[7],q[8];

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

rz(pi*1.0) q[7];

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

rz(pi*1.0055091736) q[6];
rz(pi*-0.0055091736) q[7];
rz(pi*1.0146354379) q[4];
rz(pi*-0.0146354379) q[5];

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
cx q[4],q[5];
h q[4];
cx q[5],q[4];
t q[4];
cx q[5],q[4];
tdg q[4];
h q[4];
cx q[4],q[5];

rz(pi*1.0) q[6];
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

rz(pi*1.5) q[5];
rz(pi*-0.5) q[6];

// Gate: ISWAP**0.5
cx q[5],q[6];
h q[5];
cx q[6],q[5];
t q[5];
cx q[6],q[5];
tdg q[5];
h q[5];
cx q[5],q[6];

rz(pi*1.0) q[5];
