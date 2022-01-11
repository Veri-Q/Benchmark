OPENQASM 3;
const n = 3;
bit hs[n] = '001';
qubit qr[n+1];
bit cr[n];
for i in [0:n] {
    h qr[i];
}
for i in [n:n+1] {
    x qr[i];
    h qr[i];
}
for i in [0:n]{
    for j in [n:n+1]{
        if(hs[i] == 1){
            cx qr[i], qr[j];
        }
    }
}
for i in [0:n] {
    h qr[i];
}
for i in [0:n] {
    measure qr[i] -> cr[i];
}
for i in [0:n] {
    print(cr[i]);
}