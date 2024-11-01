def header(nq):
    str = ""
    str += "OPENQASM 2.0;\n"
    str += "include \"qelib1.inc\";\n"
    str += "qreg q[%d];\n"%(nq)
    return str

def carry_gate(s):
    str=''
    str+="ccx q[%d],q[%d],q[%d];\n"%(s+1, s+2, s+3)
    str+="cx q[%d],q[%d];\n"%(s+1, s+2)
    return str

def adder(numq):
    str = "//Adder with %d qubits input.\n"%numq
    str += header(3*numq+1)
    for i in range(numq):
        str+=carry_gate(3*i)
    for i in range(numq):
        str+="ccx q[%d],q[%d],q[%d];\n"%(3*i, 3*i+2, 3*i+3)
    for i in range(numq):
        str+="cx q[%d],q[%d];\n"%(3*i, 3*i+2)
    return str
