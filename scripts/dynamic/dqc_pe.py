def gen_dqc_pe(qubits, the_phase):
    cir = QuantumCircuit(qubits + 1)

    for q in range(qubits):
        cir.h(q)

    for q in range(qubits - 1, -1, -1):
        cir.cu1(np.pi*the_phase*2**(qubits-q),q,qubits)

    for q in range(qubits):
        cir.h(q)
        c = ClassicalRegister(1, 'c' + str(q))
        cir.add_register(c)
        cir.measure(q, c)
        for tar in range(q + 1, qubits):
            theta = np.pi / 2 ** (tar - q)
            cir.u1(-theta, tar).c_if(c, 1)

    return cir.qasm()
