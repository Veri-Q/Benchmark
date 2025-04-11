OPENQASM 2.0;
include "qelib1.inc";
qreg q[8];
creg c[1];
rz(-pi/2) q[1];
cx q[1],q[0];
rz(3.9739573098941117) q[0];
ry(4.506395937431269) q[1];
cx q[0],q[1];
ry(4.91821711645539) q[1];
cx q[1],q[0];
rz(pi/2) q[0];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[3];
cx q[3],q[2];
rz(3.6944969586711838) q[2];
ry(1.7612750235671673) q[3];
cx q[2],q[3];
ry(4.511496315305734) q[3];
cx q[3],q[2];
rz(pi/2) q[2];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[5];
cx q[5],q[4];
rz(2.807058737812732) q[4];
ry(4.884861620684079) q[5];
cx q[4],q[5];
ry(6.104348376837682) q[5];
cx q[5],q[4];
rz(pi/2) q[4];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[6];
rz(2.274498832627673) q[6];
ry(5.783107391945091) q[7];
cx q[6],q[7];
ry(1.9589496970412517) q[7];
cx q[7],q[6];
rz(pi/2) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[2];
cx q[2],q[1];
rz(5.805809049656703) q[1];
ry(1.180954011300975) q[2];
cx q[1],q[2];
ry(5.901365821341069) q[2];
cx q[2],q[1];
rz(pi/2) q[1];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[4];
cx q[4],q[3];
rz(4.2134853784284525) q[3];
ry(3.1491279204126092) q[4];
cx q[3],q[4];
ry(6.278527309438422) q[4];
cx q[4],q[3];
rz(pi/2) q[3];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[6];
cx q[6],q[5];
rz(2.3082129932417934) q[5];
ry(2.333608613097241) q[6];
cx q[5],q[6];
ry(5.263392227829338) q[6];
cx q[6],q[5];
rz(pi/2) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[0];
cx q[0],q[7];
ry(1.56038907136474) q[0];
rz(5.209560574797569) q[7];
cx q[7],q[0];
ry(1.5468611660760385) q[0];
cx q[0],q[7];
rz(pi/2) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[4];
cx q[4],q[0];
rz(0.6306299374394702) q[0];
ry(3.9672099075897824) q[4];
cx q[0],q[4];
ry(0.8307169374685316) q[4];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[5];
cx q[5],q[1];
rz(2.6911965440357144) q[1];
ry(1.1330885519427314) q[5];
cx q[1],q[5];
ry(1.5459796496312908) q[5];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[6];
cx q[6],q[2];
rz(0.731934536843935) q[2];
ry(-0.00044332443730935815) q[6];
cx q[2],q[6];
ry(4.714083482653637) q[6];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[3];
rz(0.9476702136531098) q[3];
ry(4.388279826977521) q[7];
cx q[3],q[7];
ry(4.229274376834452) q[7];
barrier q[0],q[1],q[2],q[3],q[4],q[5],q[6],q[7];
rz(-pi/2) q[5];
cx q[5],q[4];
rz(3.8559525206981244) q[4];
ry(6.3996879683105306) q[5];
cx q[4],q[5];
ry(6.138376383491135) q[5];
cx q[5],q[4];
rz(pi/2) q[4];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[6];
rz(4.705884643879994) q[6];
ry(3.14952960367241) q[7];
cx q[6],q[7];
ry(6.911177646005488) q[7];
cx q[7],q[6];
rz(pi/2) q[6];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[6];
cx q[6],q[5];
rz(3.9680249502429246) q[5];
ry(1.3221332997552717) q[6];
cx q[5],q[6];
ry(2.8100740834261506) q[6];
cx q[6],q[5];
rz(pi/2) q[5];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[4];
cx q[4],q[7];
ry(0.0036777622101417866) q[4];
rz(0.007015541140909022) q[7];
cx q[7],q[4];
ry(3.06540490509013) q[4];
cx q[4],q[7];
rz(pi/2) q[7];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[6];
cx q[6],q[4];
rz(3.5757946006539076) q[4];
ry(1.5656344046200177) q[6];
cx q[4],q[6];
ry(2.992762990288241) q[6];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[5];
rz(2.3978284265152294) q[5];
ry(2.965334736243439) q[7];
cx q[5],q[7];
ry(2.9303190814845173) q[7];
barrier q[4],q[5],q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[6];
rz(1.8471477339162001) q[6];
ry(5.524572984104129) q[7];
cx q[6],q[7];
ry(0.5259048465025354) q[7];
cx q[7],q[6];
rz(pi/2) q[6];
barrier q[6],q[7];
rz(-pi/2) q[6];
cx q[6],q[7];
ry(5.917254282852269) q[6];
rz(3.6547460224039163) q[7];
cx q[7],q[6];
ry(5.270862945182659) q[6];
cx q[6],q[7];
rz(pi/2) q[7];
barrier q[6],q[7];
rz(-pi/2) q[7];
cx q[7],q[6];
rz(3.0029496885556215) q[6];
ry(1.587442916579211) q[7];
cx q[6],q[7];
ry(2.00703823498397) q[7];
barrier q[6],q[7];
measure q[7] -> c[0];