//Adder with inputs 01 and 00.
OPENQASM 3;
qubit qr[7];
bit cr[7];
gate ccx a,b,c{
	ctrl @ cx a,b,c;
}
x qr[1];
ccx qr[1],qr[2],qr[3];
cx qr[1],qr[2];
ccx qr[4],qr[5],qr[6];
cx qr[4],qr[5];
ccx qr[0],qr[2],qr[3];
ccx qr[3],qr[5],qr[6];
cx qr[0],qr[2];
cx qr[3],qr[5];
measure qr[0] -> cr[0];
measure qr[1] -> cr[1];
measure qr[2] -> cr[2];
measure qr[3] -> cr[3];
measure qr[4] -> cr[4];
measure qr[5] -> cr[5];
measure qr[6] -> cr[6];
print(cr[0]);
print(cr[1]);
print(cr[2]);
print(cr[3]);
print(cr[4]);
print(cr[5]);
print(cr[6]);
