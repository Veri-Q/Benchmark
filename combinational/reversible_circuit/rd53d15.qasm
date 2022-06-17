OPENQASM 2.0;
include "qelib1.inc";
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
qreg q[7];
mcx q[4],q[3],q[2],q[0],q[6];
cx q[1],q[2];
cx q[2],q[3];
cx q[3],q[4];
cx q[4],q[0];
ccx q[4],q[0],q[5];
x q[2];
ccx q[2],q[1],q[5];
x q[2];
x q[3];
ccx q[3],q[2],q[5];
x q[3];
x q[4];
x q[3];
ccx q[4],q[3],q[5];
x q[3];
x q[4];
x q[5];
x q[0];
x q[3];
mcx q[0],q[4],q[3],q[1],q[6];
x q[3];
x q[0];
x q[0];
x q[2];
mcx q[0],q[3],q[2],q[1],q[6];
x q[2];
x q[0];
