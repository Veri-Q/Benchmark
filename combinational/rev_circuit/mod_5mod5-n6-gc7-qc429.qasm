OPENQASM 2.0;
include "qelib1.inc";
gate mcu1(param0) q0,q1,q2,q3,q4,q5 { cu1(pi/16) q4,q5; cx q4,q3; cu1(-pi/16) q3,q5; cx q4,q3; cu1(pi/16) q3,q5; cx q3,q2; cu1(-pi/16) q2,q5; cx q4,q2; cu1(pi/16) q2,q5; cx q3,q2; cu1(-pi/16) q2,q5; cx q4,q2; cu1(pi/16) q2,q5; cx q2,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q3,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q2,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q3,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q1,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q2,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q1,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q2,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; }
gate mcx_gray q0,q1,q2,q3,q4,q5 { h q5; mcu1(pi) q0,q1,q2,q3,q4,q5; h q5; }
qreg q[6];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
mcx_gray q[0],q[1],q[2],q[3],q[4],q[5];
