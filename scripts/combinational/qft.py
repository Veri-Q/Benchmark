def gen_qft(qubits):

    cir = QuantumCircuit(qubits, qubits)
    for q in range(qubits):
        cir.h(q)
        for tar in range(q + 1, qubits):
            theta = np.pi / 2 ** (tar - q)
            cir.cu1(theta, q, tar)

    return cir.qasm()