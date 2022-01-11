OPENQASM 2.0;
include "qelib1.inc";
qreg q[10];
creg c0[1];
creg c1[1];
creg c2[1];
creg c3[1];
creg c4[1];
creg c5[1];
creg c6[1];
creg c7[1];
creg c8[1];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
cu1(pi/512) q[8],q[9];
cu1(pi/256) q[7],q[9];
cu1(pi/128) q[6],q[9];
cu1(pi/64) q[5],q[9];
cu1(pi/32) q[4],q[9];
cu1(pi/16) q[3],q[9];
cu1(pi/8) q[2],q[9];
cu1(pi/4) q[1],q[9];
cu1(pi/2) q[0],q[9];
h q[0];
measure q[0] -> c0[0];
if(c0==1) u1(-pi/2) q[1];
if(c0==1) u1(-pi/4) q[2];
if(c0==1) u1(-pi/8) q[3];
if(c0==1) u1(-pi/16) q[4];
if(c0==1) u1(-pi/32) q[5];
if(c0==1) u1(-pi/64) q[6];
if(c0==1) u1(-pi/128) q[7];
if(c0==1) u1(-pi/256) q[8];
h q[1];
measure q[1] -> c1[0];
if(c1==1) u1(-pi/2) q[2];
if(c1==1) u1(-pi/4) q[3];
if(c1==1) u1(-pi/8) q[4];
if(c1==1) u1(-pi/16) q[5];
if(c1==1) u1(-pi/32) q[6];
if(c1==1) u1(-pi/64) q[7];
if(c1==1) u1(-pi/128) q[8];
h q[2];
measure q[2] -> c2[0];
if(c2==1) u1(-pi/2) q[3];
if(c2==1) u1(-pi/4) q[4];
if(c2==1) u1(-pi/8) q[5];
if(c2==1) u1(-pi/16) q[6];
if(c2==1) u1(-pi/32) q[7];
if(c2==1) u1(-pi/64) q[8];
h q[3];
measure q[3] -> c3[0];
if(c3==1) u1(-pi/2) q[4];
if(c3==1) u1(-pi/4) q[5];
if(c3==1) u1(-pi/8) q[6];
if(c3==1) u1(-pi/16) q[7];
if(c3==1) u1(-pi/32) q[8];
h q[4];
measure q[4] -> c4[0];
if(c4==1) u1(-pi/2) q[5];
if(c4==1) u1(-pi/4) q[6];
if(c4==1) u1(-pi/8) q[7];
if(c4==1) u1(-pi/16) q[8];
h q[5];
measure q[5] -> c5[0];
if(c5==1) u1(-pi/2) q[6];
if(c5==1) u1(-pi/4) q[7];
if(c5==1) u1(-pi/8) q[8];
h q[6];
measure q[6] -> c6[0];
if(c6==1) u1(-pi/2) q[7];
if(c6==1) u1(-pi/4) q[8];
h q[7];
measure q[7] -> c7[0];
if(c7==1) u1(-pi/2) q[8];
h q[8];
measure q[8] -> c8[0];
