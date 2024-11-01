def gen_pe(qubits,the_phase):

    cir=QuantumCircuit(qubits+1,qubits+1)

    for q in range(qubits):
        cir.h(q)

    for q in range(qubits-1,-1,-1):
        cir.cu1(np.pi*the_phase*2**(qubits-q),q,qubits)

    for q in range(qubits):
        cir.h(q)
        for tar in range(q+1,qubits):
            cir.cu1(-np.pi/(2**(tar-q)),q,tar)

    return cir.qasm()