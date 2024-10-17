// Generated from Cirq v1.0.0

OPENQASM 2.0;
include "qelib1.inc";


// Qubits: [q(0, 0), q(0, 1), q(0, 2), q(1, 0), q(1, 1), q(1, 2)]
qreg q[6];


h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];

// Gate: ZZ
z q[0];
z q[1];
u3(0,0,0) q[0];
u3(0,0,0) q[1];
sx q[0];
cx q[0],q[1];
sx q[0];
ry(pi*0.5) q[1];
cx q[1],q[0];
sxdg q[1];
s q[1];
cx q[0],q[1];
u3(0,0,0) q[0];
u3(0,0,0) q[1];

// Gate: ZZ
z q[3];
z q[4];
u3(0,0,0) q[3];
u3(0,0,0) q[4];
sx q[3];
cx q[3],q[4];
sx q[3];
ry(pi*0.5) q[4];
cx q[4],q[3];
sxdg q[4];
s q[4];
cx q[3],q[4];
u3(0,0,0) q[3];
u3(0,0,0) q[4];

// Gate: ZZ**-1.0
rz(pi*-1.0) q[1];
rz(pi*-1.0) q[2];
u3(0,0,0) q[1];
u3(0,0,0) q[2];
sx q[1];
cx q[1],q[2];
sx q[1];
ry(pi*0.5) q[2];
cx q[2],q[1];
sxdg q[2];
s q[2];
cx q[1],q[2];
u3(0,0,0) q[1];
u3(0,0,0) q[2];

// Gate: ZZ
z q[4];
z q[5];
u3(0,0,0) q[4];
u3(0,0,0) q[5];
sx q[4];
cx q[4],q[5];
sx q[4];
ry(pi*0.5) q[5];
cx q[5],q[4];
sxdg q[5];
s q[5];
cx q[4],q[5];
u3(0,0,0) q[4];
u3(0,0,0) q[5];

// Gate: ZZ**-1.0
rz(pi*-1.0) q[0];
rz(pi*-1.0) q[3];
u3(0,0,0) q[0];
u3(0,0,0) q[3];
sx q[0];
cx q[0],q[3];
sx q[0];
ry(pi*0.5) q[3];
cx q[3],q[0];
sxdg q[3];
s q[3];
cx q[0],q[3];
u3(0,0,0) q[0];
u3(0,0,0) q[3];

// Gate: ZZ
z q[1];
z q[4];
u3(0,0,0) q[1];
u3(0,0,0) q[4];
sx q[1];
cx q[1],q[4];
sx q[1];
ry(pi*0.5) q[4];
cx q[4],q[1];
sxdg q[4];
s q[4];
cx q[1],q[4];
u3(0,0,0) q[1];
u3(0,0,0) q[4];

// Gate: ZZ
z q[2];
z q[5];
u3(0,0,0) q[2];
u3(0,0,0) q[5];
sx q[2];
cx q[2],q[5];
sx q[2];
ry(pi*0.5) q[5];
cx q[5],q[2];
sxdg q[5];
s q[5];
cx q[2],q[5];
u3(0,0,0) q[2];
u3(0,0,0) q[5];

rx(pi*1.0) q[0];
rx(pi*1.0) q[1];
rx(pi*1.0) q[2];
rx(pi*1.0) q[3];
rx(pi*1.0) q[4];
rx(pi*1.0) q[5];
