def gen_dqc_qft(qubits):

    cir= QuantumCircuit(qubits)

    for q in range(qubits):
        cir.h(q)
        c= ClassicalRegister(1,'c'+str(q))
        cir.add_register(c)
        cir.measure(q,c)
        for tar in range(q + 1, qubits):
            theta = np.pi / 2 ** (tar - q)
            cir.u1(theta,tar).c_if(c, 1)

    return cir.qasm()
