OPENQASM 2.0;
include "qelib1.inc";
qreg q[100];
creg c[100];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[35];
h q[36];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
h q[43];
h q[44];
h q[45];
h q[46];
h q[47];
h q[48];
h q[49];
h q[50];
h q[51];
h q[52];
h q[53];
h q[54];
h q[55];
h q[56];
h q[57];
h q[58];
h q[59];
h q[60];
h q[61];
h q[62];
h q[63];
h q[64];
h q[65];
h q[66];
h q[67];
h q[68];
h q[69];
h q[70];
h q[71];
h q[72];
h q[73];
h q[74];
h q[75];
h q[76];
h q[77];
h q[78];
h q[79];
h q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
h q[86];
h q[87];
h q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
h q[96];
h q[97];
h q[98];
h q[99];
cz q[0],q[1];
cz q[4],q[5];
cz q[8],q[9];
cz q[12],q[13];
cz q[16],q[17];
cz q[20],q[21];
cz q[24],q[25];
cz q[28],q[29];
cz q[32],q[33];
cz q[36],q[37];
cz q[40],q[41];
cz q[44],q[45];
cz q[48],q[49];
cz q[52],q[53];
cz q[56],q[57];
cz q[60],q[61];
cz q[64],q[65];
cz q[68],q[69];
cz q[72],q[73];
cz q[76],q[77];
cz q[80],q[81];
cz q[84],q[85];
cz q[88],q[89];
cz q[92],q[93];
cz q[96],q[97];
t q[2];
t q[3];
t q[6];
t q[7];
t q[10];
t q[11];
t q[14];
t q[15];
t q[18];
t q[19];
t q[22];
t q[23];
t q[26];
t q[27];
t q[30];
t q[31];
t q[34];
t q[35];
t q[38];
t q[39];
t q[42];
t q[43];
t q[46];
t q[47];
t q[50];
t q[51];
t q[54];
t q[55];
t q[58];
t q[59];
t q[62];
t q[63];
t q[66];
t q[67];
t q[70];
t q[71];
t q[74];
t q[75];
t q[78];
t q[79];
t q[82];
t q[83];
t q[86];
t q[87];
t q[90];
t q[91];
t q[94];
t q[95];
t q[98];
t q[99];
cz q[10],q[20];
cz q[50],q[60];
cz q[31],q[41];
cz q[71],q[81];
cz q[12],q[22];
cz q[52],q[62];
cz q[33],q[43];
cz q[73],q[83];
cz q[14],q[24];
cz q[54],q[64];
cz q[35],q[45];
cz q[75],q[85];
cz q[16],q[26];
cz q[56],q[66];
cz q[37],q[47];
cz q[77],q[87];
cz q[18],q[28];
cz q[58],q[68];
cz q[39],q[49];
cz q[79],q[89];
ry(pi/2) q[0];
ry(pi/2) q[1];
rx(pi/2) q[4];
rx(pi/2) q[5];
ry(pi/2) q[8];
rx(pi/2) q[9];
ry(pi/2) q[13];
rx(pi/2) q[17];
rx(pi/2) q[21];
ry(pi/2) q[25];
ry(pi/2) q[29];
ry(pi/2) q[32];
rx(pi/2) q[36];
ry(pi/2) q[40];
ry(pi/2) q[44];
rx(pi/2) q[48];
ry(pi/2) q[53];
ry(pi/2) q[57];
ry(pi/2) q[61];
ry(pi/2) q[65];
rx(pi/2) q[69];
ry(pi/2) q[72];
ry(pi/2) q[76];
ry(pi/2) q[80];
rx(pi/2) q[84];
rx(pi/2) q[88];
rx(pi/2) q[92];
ry(pi/2) q[93];
ry(pi/2) q[96];
ry(pi/2) q[97];
cz q[1],q[2];
cz q[5],q[6];
cz q[13],q[14];
cz q[17],q[18];
cz q[21],q[22];
cz q[25],q[26];
cz q[33],q[34];
cz q[37],q[38];
cz q[41],q[42];
cz q[45],q[46];
cz q[53],q[54];
cz q[57],q[58];
cz q[61],q[62];
cz q[65],q[66];
cz q[73],q[74];
cz q[77],q[78];
cz q[81],q[82];
cz q[85],q[86];
cz q[93],q[94];
cz q[97],q[98];
t q[0];
t q[4];
t q[8];
t q[9];
rx(pi/2) q[10];
ry(pi/2) q[12];
rx(pi/2) q[16];
ry(pi/2) q[20];
ry(pi/2) q[24];
rx(pi/2) q[28];
t q[29];
ry(pi/2) q[31];
t q[32];
rx(pi/2) q[35];
t q[36];
ry(pi/2) q[39];
t q[40];
ry(pi/2) q[43];
t q[44];
rx(pi/2) q[47];
t q[48];
rx(pi/2) q[49];
ry(pi/2) q[50];
rx(pi/2) q[52];
rx(pi/2) q[56];
ry(pi/2) q[60];
rx(pi/2) q[64];
ry(pi/2) q[68];
t q[69];
rx(pi/2) q[71];
t q[72];
ry(pi/2) q[75];
t q[76];
ry(pi/2) q[79];
t q[80];
rx(pi/2) q[83];
t q[84];
rx(pi/2) q[87];
t q[88];
rx(pi/2) q[89];
t q[92];
t q[96];
cz q[0],q[10];
cz q[40],q[50];
cz q[80],q[90];
cz q[21],q[31];
cz q[61],q[71];
cz q[2],q[12];
cz q[42],q[52];
cz q[82],q[92];
cz q[23],q[33];
cz q[63],q[73];
cz q[4],q[14];
cz q[44],q[54];
cz q[84],q[94];
cz q[25],q[35];
cz q[65],q[75];
cz q[6],q[16];
cz q[46],q[56];
cz q[86],q[96];
cz q[27],q[37];
cz q[67],q[77];
cz q[8],q[18];
cz q[48],q[58];
cz q[88],q[98];
cz q[29],q[39];
cz q[69],q[79];
ry(pi/2) q[1];
ry(pi/2) q[5];
rx(pi/2) q[13];
ry(pi/2) q[17];
t q[20];
ry(pi/2) q[22];
t q[24];
ry(pi/2) q[26];
t q[28];
ry(pi/2) q[34];
ry(pi/2) q[38];
ry(pi/2) q[41];
t q[43];
ry(pi/2) q[45];
t q[47];
t q[49];
ry(pi/2) q[53];
rx(pi/2) q[57];
t q[60];
ry(pi/2) q[62];
t q[64];
rx(pi/2) q[66];
t q[68];
ry(pi/2) q[74];
rx(pi/2) q[78];
rx(pi/2) q[81];
t q[83];
rx(pi/2) q[85];
t q[87];
t q[89];
ry(pi/2) q[93];
ry(pi/2) q[97];
cz q[2],q[3];
cz q[6],q[7];
cz q[10],q[11];
cz q[14],q[15];
cz q[18],q[19];
cz q[22],q[23];
cz q[26],q[27];
cz q[30],q[31];
cz q[34],q[35];
cz q[38],q[39];
cz q[42],q[43];
cz q[46],q[47];
cz q[50],q[51];
cz q[54],q[55];
cz q[58],q[59];
cz q[62],q[63];
cz q[66],q[67];
cz q[70],q[71];
cz q[74],q[75];
cz q[78],q[79];
cz q[82],q[83];
cz q[86],q[87];
cz q[90],q[91];
cz q[94],q[95];
cz q[98],q[99];
rx(pi/2) q[0];
t q[1];
rx(pi/2) q[4];
t q[5];
ry(pi/2) q[8];
ry(pi/2) q[12];
t q[13];
ry(pi/2) q[16];
t q[17];
ry(pi/2) q[21];
ry(pi/2) q[25];
ry(pi/2) q[29];
ry(pi/2) q[33];
rx(pi/2) q[37];
ry(pi/2) q[40];
t q[41];
rx(pi/2) q[44];
t q[45];
ry(pi/2) q[48];
ry(pi/2) q[52];
t q[53];
ry(pi/2) q[56];
t q[57];
ry(pi/2) q[61];
ry(pi/2) q[65];
ry(pi/2) q[69];
rx(pi/2) q[73];
ry(pi/2) q[77];
ry(pi/2) q[80];
t q[81];
ry(pi/2) q[84];
t q[85];
ry(pi/2) q[88];
rx(pi/2) q[92];
t q[93];
ry(pi/2) q[96];
t q[97];
cz q[30],q[40];
cz q[70],q[80];
cz q[11],q[21];
cz q[51],q[61];
cz q[32],q[42];
cz q[72],q[82];
cz q[13],q[23];
cz q[53],q[63];
cz q[34],q[44];
cz q[74],q[84];
cz q[15],q[25];
cz q[55],q[65];
cz q[36],q[46];
cz q[76],q[86];
cz q[17],q[27];
cz q[57],q[67];
cz q[38],q[48];
cz q[78],q[88];
cz q[19],q[29];
cz q[59],q[69];
t q[0];
rx(pi/2) q[2];
ry(pi/2) q[3];
t q[4];
ry(pi/2) q[6];
rx(pi/2) q[7];
t q[8];
ry(pi/2) q[10];
t q[12];
rx(pi/2) q[14];
t q[16];
rx(pi/2) q[18];
ry(pi/2) q[22];
rx(pi/2) q[26];
ry(pi/2) q[31];
t q[33];
rx(pi/2) q[35];
t q[37];
rx(pi/2) q[39];
ry(pi/2) q[43];
rx(pi/2) q[47];
ry(pi/2) q[50];
t q[52];
ry(pi/2) q[54];
t q[56];
ry(pi/2) q[58];
ry(pi/2) q[62];
rx(pi/2) q[66];
ry(pi/2) q[71];
t q[73];
ry(pi/2) q[75];
t q[77];
ry(pi/2) q[79];
rx(pi/2) q[83];
rx(pi/2) q[87];
ry(pi/2) q[90];
rx(pi/2) q[91];
t q[92];
rx(pi/2) q[94];
ry(pi/2) q[95];
t q[96];
rx(pi/2) q[98];
rx(pi/2) q[99];
cz q[3],q[4];
cz q[7],q[8];
cz q[11],q[12];
cz q[15],q[16];
cz q[23],q[24];
cz q[27],q[28];
cz q[31],q[32];
cz q[35],q[36];
cz q[43],q[44];
cz q[47],q[48];
cz q[51],q[52];
cz q[55],q[56];
cz q[63],q[64];
cz q[67],q[68];
cz q[71],q[72];
cz q[75],q[76];
cz q[83],q[84];
cz q[87],q[88];
cz q[91],q[92];
cz q[95],q[96];
t q[2];
t q[6];
t q[10];
rx(pi/2) q[13];
t q[14];
ry(pi/2) q[17];
t q[18];
ry(pi/2) q[19];
rx(pi/2) q[21];
t q[22];
rx(pi/2) q[25];
t q[26];
rx(pi/2) q[29];
rx(pi/2) q[30];
rx(pi/2) q[34];
ry(pi/2) q[38];
t q[39];
rx(pi/2) q[40];
rx(pi/2) q[42];
ry(pi/2) q[46];
t q[50];
rx(pi/2) q[53];
t q[54];
rx(pi/2) q[57];
t q[58];
ry(pi/2) q[59];
rx(pi/2) q[61];
t q[62];
rx(pi/2) q[65];
t q[66];
ry(pi/2) q[69];
ry(pi/2) q[70];
ry(pi/2) q[74];
rx(pi/2) q[78];
t q[79];
ry(pi/2) q[80];
ry(pi/2) q[82];
rx(pi/2) q[86];
t q[90];
t q[94];
t q[98];
t q[99];
cz q[20],q[30];
cz q[60],q[70];
cz q[1],q[11];
cz q[41],q[51];
cz q[81],q[91];
cz q[22],q[32];
cz q[62],q[72];
cz q[3],q[13];
cz q[43],q[53];
cz q[83],q[93];
cz q[24],q[34];
cz q[64],q[74];
cz q[5],q[15];
cz q[45],q[55];
cz q[85],q[95];
cz q[26],q[36];
cz q[66],q[76];
cz q[7],q[17];
cz q[47],q[57];
cz q[87],q[97];
cz q[28],q[38];
cz q[68],q[78];
cz q[9],q[19];
cz q[49],q[59];
cz q[89],q[99];
ry(pi/2) q[4];
ry(pi/2) q[8];
rx(pi/2) q[12];
rx(pi/2) q[16];
t q[21];
ry(pi/2) q[23];
t q[25];
rx(pi/2) q[27];
t q[29];
rx(pi/2) q[31];
rx(pi/2) q[35];
t q[40];
t q[42];
rx(pi/2) q[44];
t q[46];
ry(pi/2) q[48];
ry(pi/2) q[52];
rx(pi/2) q[56];
t q[61];
rx(pi/2) q[63];
t q[65];
ry(pi/2) q[67];
t q[69];
rx(pi/2) q[71];
ry(pi/2) q[75];
t q[80];
t q[82];
rx(pi/2) q[84];
t q[86];
ry(pi/2) q[88];
rx(pi/2) q[92];
rx(pi/2) q[96];
cz q[0],q[1];
cz q[4],q[5];
cz q[8],q[9];
cz q[12],q[13];
cz q[16],q[17];
cz q[20],q[21];
cz q[24],q[25];
cz q[28],q[29];
cz q[32],q[33];
cz q[36],q[37];
cz q[40],q[41];
cz q[44],q[45];
cz q[48],q[49];
cz q[52],q[53];
cz q[56],q[57];
cz q[60],q[61];
cz q[64],q[65];
cz q[68],q[69];
cz q[72],q[73];
cz q[76],q[77];
cz q[80],q[81];
cz q[84],q[85];
cz q[88],q[89];
cz q[92],q[93];
cz q[96],q[97];
rx(pi/2) q[3];
rx(pi/2) q[7];
ry(pi/2) q[11];
rx(pi/2) q[15];
rx(pi/2) q[19];
rx(pi/2) q[22];
t q[23];
ry(pi/2) q[26];
t q[27];
ry(pi/2) q[30];
t q[31];
ry(pi/2) q[34];
t q[35];
ry(pi/2) q[38];
rx(pi/2) q[43];
rx(pi/2) q[47];
ry(pi/2) q[51];
rx(pi/2) q[55];
rx(pi/2) q[59];
rx(pi/2) q[62];
t q[63];
rx(pi/2) q[66];
t q[67];
ry(pi/2) q[70];
t q[71];
rx(pi/2) q[74];
t q[75];
ry(pi/2) q[78];
ry(pi/2) q[83];
rx(pi/2) q[87];
rx(pi/2) q[91];
ry(pi/2) q[95];
rx(pi/2) q[99];
h q[0];
h q[1];
h q[2];
h q[3];
h q[4];
h q[5];
h q[6];
h q[7];
h q[8];
h q[9];
h q[10];
h q[11];
h q[12];
h q[13];
h q[14];
h q[15];
h q[16];
h q[17];
h q[18];
h q[19];
h q[20];
h q[21];
h q[22];
h q[23];
h q[24];
h q[25];
h q[26];
h q[27];
h q[28];
h q[29];
h q[30];
h q[31];
h q[32];
h q[33];
h q[34];
h q[35];
h q[36];
h q[37];
h q[38];
h q[39];
h q[40];
h q[41];
h q[42];
h q[43];
h q[44];
h q[45];
h q[46];
h q[47];
h q[48];
h q[49];
h q[50];
h q[51];
h q[52];
h q[53];
h q[54];
h q[55];
h q[56];
h q[57];
h q[58];
h q[59];
h q[60];
h q[61];
h q[62];
h q[63];
h q[64];
h q[65];
h q[66];
h q[67];
h q[68];
h q[69];
h q[70];
h q[71];
h q[72];
h q[73];
h q[74];
h q[75];
h q[76];
h q[77];
h q[78];
h q[79];
h q[80];
h q[81];
h q[82];
h q[83];
h q[84];
h q[85];
h q[86];
h q[87];
h q[88];
h q[89];
h q[90];
h q[91];
h q[92];
h q[93];
h q[94];
h q[95];
h q[96];
h q[97];
h q[98];
h q[99];
