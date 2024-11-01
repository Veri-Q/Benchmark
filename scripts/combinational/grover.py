def gen_grover(qubits, r):
    cir = QuantumCircuit(2 * qubits - 1)
    # add H
    for q in range(qubits):
        cir.h(q)
    cir.h(2 * qubits - 2)
    for k in range(r):
        # add tofolli
        cir.ccx(0, 1, qubits)
        for q in range(2, qubits):
            cir.ccx(q, q + qubits - 2, q + qubits - 1)
        for q in range(qubits - 2, 1, -1):
            cir.ccx(q, q + qubits - 2, q + qubits - 1)
        if qubits > 2:
            cir.ccx(0, 1, qubits)
            # add H
        for q in range(qubits):
            cir.h(q)
        # add X
        for q in range(qubits):
            cir.x(q)
        cir.h(qubits - 1)
        if qubits == 2:
            cir.cx(0, 1)
        elif qubits == 3:
            cir.ccx(0, 1, 2)
        else:
            cir.ccx(0, 1, qubits)
            for q in range(2, qubits - 2):
                cir.ccx(q, q + qubits - 2, q + qubits - 1)
            cir.ccx(qubits - 2, 2 * qubits - 4, qubits - 1)

            for q in range(qubits - 3, 1, -1):
                cir.ccx(q, q + qubits - 2, q + qubits - 1)
            if qubits > 2:
                cir.ccx(0, 1, qubits)
        cir.h(qubits - 1)
        # add X
        for q in range(qubits):
            cir.x(q)
            # add H
        for q in range(qubits):
            cir.h(q)

    cir.h(2 * qubits - 2)
    return cir.qasm()