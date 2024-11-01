def gen_bv(qubits, hiddenString):
    
    cir = QuantumCircuit(qubits, qubits)

    for i in range(qubits - 1):
        cir.h(i)

    cir.x(qubits - 1)
    cir.h(qubits - 1)
    hiddenString = list(hiddenString)
    for i in range(len(hiddenString)):
        if hiddenString[i] == "1":
            cir.cx(i, qubits - 1)

    for i in range(qubits):
        cir.h(i)

    return cir.qasm()