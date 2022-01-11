//Adder with inputs 1111001 and 0001100.
OPENQASM 3;
qubit qr[22];
bit cr[22];
gate ccx a,b,c{
	ctrl @ cx a,b,c;
}
x qr[1];
x qr[10];
x qr[13];
x qr[16];
x qr[19];
x qr[8];
x qr[11];
ccx qr[1],qr[2],qr[3];
cx qr[1],qr[2];
ccx qr[4],qr[5],qr[6];
cx qr[4],qr[5];
ccx qr[7],qr[8],qr[9];
cx qr[7],qr[8];
ccx qr[10],qr[11],qr[12];
cx qr[10],qr[11];
ccx qr[13],qr[14],qr[15];
cx qr[13],qr[14];
ccx qr[16],qr[17],qr[18];
cx qr[16],qr[17];
ccx qr[19],qr[20],qr[21];
cx qr[19],qr[20];
ccx qr[0],qr[2],qr[3];
ccx qr[3],qr[5],qr[6];
ccx qr[6],qr[8],qr[9];
ccx qr[9],qr[11],qr[12];
ccx qr[12],qr[14],qr[15];
ccx qr[15],qr[17],qr[18];
ccx qr[18],qr[20],qr[21];
cx qr[0],qr[2];
cx qr[3],qr[5];
cx qr[6],qr[8];
cx qr[9],qr[11];
cx qr[12],qr[14];
cx qr[15],qr[17];
cx qr[18],qr[20];
measure qr[0] -> cr[0];
measure qr[1] -> cr[1];
measure qr[2] -> cr[2];
measure qr[3] -> cr[3];
measure qr[4] -> cr[4];
measure qr[5] -> cr[5];
measure qr[6] -> cr[6];
measure qr[7] -> cr[7];
measure qr[8] -> cr[8];
measure qr[9] -> cr[9];
measure qr[10] -> cr[10];
measure qr[11] -> cr[11];
measure qr[12] -> cr[12];
measure qr[13] -> cr[13];
measure qr[14] -> cr[14];
measure qr[15] -> cr[15];
measure qr[16] -> cr[16];
measure qr[17] -> cr[17];
measure qr[18] -> cr[18];
measure qr[19] -> cr[19];
measure qr[20] -> cr[20];
measure qr[21] -> cr[21];
print(cr[0]);
print(cr[1]);
print(cr[2]);
print(cr[3]);
print(cr[4]);
print(cr[5]);
print(cr[6]);
print(cr[7]);
print(cr[8]);
print(cr[9]);
print(cr[10]);
print(cr[11]);
print(cr[12]);
print(cr[13]);
print(cr[14]);
print(cr[15]);
print(cr[16]);
print(cr[17]);
print(cr[18]);
print(cr[19]);
print(cr[20]);
print(cr[21]);