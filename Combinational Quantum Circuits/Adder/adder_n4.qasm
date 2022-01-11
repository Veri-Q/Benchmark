//Adder with inputs 0 and 1.
OPENQASM 3;
qubit qr[4];
bit cr[4];
gate ccx a,b,c{
	ctrl @ cx a,b,c;
}
x qr[2];
ccx qr[1],qr[2],qr[3];
cx qr[1],qr[2];
ccx qr[0],qr[2],qr[3];
cx qr[0],qr[2];
measure qr[0] -> cr[0];
measure qr[1] -> cr[1];
measure qr[2] -> cr[2];
measure qr[3] -> cr[3];
print(cr[0]);
print(cr[1]);
print(cr[2]);
print(cr[3]);
