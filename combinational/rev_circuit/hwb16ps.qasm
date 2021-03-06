OPENQASM 2.0;
include "qelib1.inc";
gate mcu1(param0) q0,q1,q2,q3,q4,q5 { cu1(pi/16) q4,q5; cx q4,q3; cu1(-pi/16) q3,q5; cx q4,q3; cu1(pi/16) q3,q5; cx q3,q2; cu1(-pi/16) q2,q5; cx q4,q2; cu1(pi/16) q2,q5; cx q3,q2; cu1(-pi/16) q2,q5; cx q4,q2; cu1(pi/16) q2,q5; cx q2,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q3,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q2,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q3,q1; cu1(-pi/16) q1,q5; cx q4,q1; cu1(pi/16) q1,q5; cx q1,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q2,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q1,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q2,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; cx q3,q0; cu1(-pi/16) q0,q5; cx q4,q0; cu1(pi/16) q0,q5; }
gate rcccx_dg q0,q1,q2,q3 { u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u2(-2*pi,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(-2*pi,pi) q3; }
gate rcccx q0,q1,q2,q3 { u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; cx q0,q3; u1(pi/4) q3; cx q1,q3; u1(-pi/4) q3; u2(0,pi) q3; u1(pi/4) q3; cx q2,q3; u1(-pi/4) q3; u2(0,pi) q3; }
gate mcx q0,q1,q2,q3 { h q3; p(pi/8) q0; p(pi/8) q1; p(pi/8) q2; p(pi/8) q3; cx q0,q1; p(-pi/8) q1; cx q0,q1; cx q1,q2; p(-pi/8) q2; cx q0,q2; p(pi/8) q2; cx q1,q2; p(-pi/8) q2; cx q0,q2; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q1,q3; p(pi/8) q3; cx q2,q3; p(-pi/8) q3; cx q0,q3; h q3; }
gate mcx_140155722032224 q0,q1,q2,q3,q4 { h q4; cu1(pi/2) q3,q4; h q4; rcccx q0,q1,q2,q3; h q4; cu1(-pi/2) q3,q4; h q4; rcccx_dg q0,q1,q2,q3; c3sx q0,q1,q2,q4; }
gate mcx_gray q0,q1,q2,q3,q4,q5 { h q5; mcu1(pi) q0,q1,q2,q3,q4,q5; h q5; }
qreg q[21];
cx q[0],q[16];
ccx q[1],q[16],q[17];
cx q[1],q[16];
ccx q[2],q[16],q[17];
cx q[2],q[16];
mcx q[3],q[16],q[17],q[18];
ccx q[3],q[16],q[17];
cx q[3],q[16];
mcx q[4],q[16],q[17],q[18];
ccx q[4],q[16],q[17];
cx q[4],q[16];
mcx q[5],q[16],q[17],q[18];
ccx q[5],q[16],q[17];
cx q[5],q[16];
mcx q[6],q[16],q[17],q[18];
ccx q[6],q[16],q[17];
cx q[6],q[16];
mcx_140155722032224 q[7],q[16],q[17],q[18],q[19];
mcx q[7],q[16],q[17],q[18];
ccx q[7],q[16],q[17];
cx q[7],q[16];
mcx q[8],q[16],q[17],q[18],q[19];
mcx q[8],q[16],q[17],q[18];
ccx q[8],q[16],q[17];
cx q[8],q[16];
mcx q[9],q[16],q[17],q[18],q[19];
mcx q[9],q[16],q[17],q[18];
ccx q[9],q[16],q[17];
cx q[9],q[16];
mcx q[10],q[16],q[17],q[18],q[19];
mcx q[10],q[16],q[17],q[18];
ccx q[10],q[16],q[17];
cx q[10],q[16];
mcx q[11],q[16],q[17],q[18],q[19];
mcx q[11],q[16],q[17],q[18];
ccx q[11],q[16],q[17];
cx q[11],q[16];
mcx q[12],q[16],q[17],q[18],q[19];
mcx q[12],q[16],q[17],q[18];
ccx q[12],q[16],q[17];
cx q[12],q[16];
mcx q[13],q[16],q[17],q[18],q[19];
mcx q[13],q[16],q[17],q[18];
ccx q[13],q[16],q[17];
cx q[13],q[16];
mcx q[14],q[16],q[17],q[18],q[19];
mcx q[14],q[16],q[17],q[18];
ccx q[14],q[16],q[17];
cx q[14],q[16];
mcx_gray q[15],q[16],q[17],q[18],q[19],q[20];
mcx q[15],q[16],q[17],q[18],q[19];
mcx q[15],q[16],q[17],q[18];
ccx q[15],q[16],q[17];
cx q[15],q[16];
ccx q[16],q[0],q[1];
ccx q[16],q[1],q[0];
ccx q[16],q[0],q[1];
ccx q[16],q[2],q[3];
ccx q[16],q[3],q[2];
ccx q[16],q[2],q[3];
ccx q[16],q[4],q[5];
ccx q[16],q[5],q[4];
ccx q[16],q[4],q[5];
ccx q[16],q[6],q[7];
ccx q[16],q[7],q[6];
ccx q[16],q[6],q[7];
ccx q[16],q[8],q[9];
ccx q[16],q[9],q[8];
ccx q[16],q[8],q[9];
ccx q[16],q[10],q[11];
ccx q[16],q[11],q[10];
ccx q[16],q[10],q[11];
ccx q[16],q[12],q[13];
ccx q[16],q[13],q[12];
ccx q[16],q[12],q[13];
ccx q[16],q[14],q[15];
ccx q[16],q[15],q[14];
ccx q[16],q[14],q[15];
ccx q[16],q[0],q[2];
ccx q[16],q[2],q[0];
ccx q[16],q[0],q[2];
ccx q[16],q[4],q[6];
ccx q[16],q[6],q[4];
ccx q[16],q[4],q[6];
ccx q[16],q[8],q[10];
ccx q[16],q[10],q[8];
ccx q[16],q[8],q[10];
ccx q[16],q[12],q[14];
ccx q[16],q[14],q[12];
ccx q[16],q[12],q[14];
ccx q[16],q[0],q[4];
ccx q[16],q[4],q[0];
ccx q[16],q[0],q[4];
ccx q[16],q[8],q[12];
ccx q[16],q[12],q[8];
ccx q[16],q[8],q[12];
ccx q[16],q[0],q[8];
ccx q[16],q[8],q[0];
ccx q[16],q[0],q[8];
ccx q[17],q[0],q[2];
ccx q[17],q[2],q[0];
ccx q[17],q[0],q[2];
ccx q[17],q[1],q[3];
ccx q[17],q[3],q[1];
ccx q[17],q[1],q[3];
ccx q[17],q[4],q[6];
ccx q[17],q[6],q[4];
ccx q[17],q[4],q[6];
ccx q[17],q[5],q[7];
ccx q[17],q[7],q[5];
ccx q[17],q[5],q[7];
ccx q[17],q[8],q[10];
ccx q[17],q[10],q[8];
ccx q[17],q[8],q[10];
ccx q[17],q[9],q[11];
ccx q[17],q[11],q[9];
ccx q[17],q[9],q[11];
ccx q[17],q[12],q[14];
ccx q[17],q[14],q[12];
ccx q[17],q[12],q[14];
ccx q[17],q[13],q[15];
ccx q[17],q[15],q[13];
ccx q[17],q[13],q[15];
ccx q[17],q[0],q[4];
ccx q[17],q[4],q[0];
ccx q[17],q[0],q[4];
ccx q[17],q[1],q[5];
ccx q[17],q[5],q[1];
ccx q[17],q[1],q[5];
ccx q[17],q[8],q[12];
ccx q[17],q[12],q[8];
ccx q[17],q[8],q[12];
ccx q[17],q[9],q[13];
ccx q[17],q[13],q[9];
ccx q[17],q[9],q[13];
ccx q[17],q[0],q[8];
ccx q[17],q[8],q[0];
ccx q[17],q[0],q[8];
ccx q[17],q[1],q[9];
ccx q[17],q[9],q[1];
ccx q[17],q[1],q[9];
ccx q[18],q[0],q[4];
ccx q[18],q[4],q[0];
ccx q[18],q[0],q[4];
ccx q[18],q[1],q[5];
ccx q[18],q[5],q[1];
ccx q[18],q[1],q[5];
ccx q[18],q[2],q[6];
ccx q[18],q[6],q[2];
ccx q[18],q[2],q[6];
ccx q[18],q[3],q[7];
ccx q[18],q[7],q[3];
ccx q[18],q[3],q[7];
ccx q[18],q[8],q[12];
ccx q[18],q[12],q[8];
ccx q[18],q[8],q[12];
ccx q[18],q[9],q[13];
ccx q[18],q[13],q[9];
ccx q[18],q[9],q[13];
ccx q[18],q[10],q[14];
ccx q[18],q[14],q[10];
ccx q[18],q[10],q[14];
ccx q[18],q[11],q[15];
ccx q[18],q[15],q[11];
ccx q[18],q[11],q[15];
ccx q[18],q[0],q[8];
ccx q[18],q[8],q[0];
ccx q[18],q[0],q[8];
ccx q[18],q[1],q[9];
ccx q[18],q[9],q[1];
ccx q[18],q[1],q[9];
ccx q[18],q[2],q[10];
ccx q[18],q[10],q[2];
ccx q[18],q[2],q[10];
ccx q[18],q[3],q[11];
ccx q[18],q[11],q[3];
ccx q[18],q[3],q[11];
ccx q[19],q[0],q[8];
ccx q[19],q[8],q[0];
ccx q[19],q[0],q[8];
ccx q[19],q[1],q[9];
ccx q[19],q[9],q[1];
ccx q[19],q[1],q[9];
ccx q[19],q[2],q[10];
ccx q[19],q[10],q[2];
ccx q[19],q[2],q[10];
ccx q[19],q[3],q[11];
ccx q[19],q[11],q[3];
ccx q[19],q[3],q[11];
ccx q[19],q[4],q[12];
ccx q[19],q[12],q[4];
ccx q[19],q[4],q[12];
ccx q[19],q[5],q[13];
ccx q[19],q[13],q[5];
ccx q[19],q[5],q[13];
ccx q[19],q[6],q[14];
ccx q[19],q[14],q[6];
ccx q[19],q[6],q[14];
ccx q[19],q[7],q[15];
ccx q[19],q[15],q[7];
ccx q[19],q[7],q[15];
