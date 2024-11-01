from qiskit.quantum_info.synthesis \
import two_qubit_cnot_decompose
def random_SU(n):
    X = (np.random.randn(n, n) + 1j * np.random.randn(n, n))
    Q, R = linalg.qr(X)
    Q /= pow(linalg.det(Q), 1/n)
    return Q

def gen_qv(qubits, depth):
    cir = QuantumCircuit(qubits, qubits)
    for j in range(depth):
        perm = np.random.permutation(qubits)
        for k in range(qubits // 2):
            q = [int(perm[2 * k]), int(perm[2 * k + 1])]
            SU = random_SU(4)
            decomposed_SU = two_qubit_cnot_decompose(SU)
            for gate in decomposed_SU:
                i0 = q[gate[1][0].index]
                if gate[0].name == "cx":
                    i1 = q[gate[1][1].index]
                    qv.cx(i0, i1)
                elif gate[0].name == "u1":
                    qv.u1(gate[0].params[2], i0)
                elif gate[0].name == "u2":
                    qv.u2(gate[0].params[1], \
                          gate[0].params[2], i0)
                elif gate[0].name == "u3":
                    qv.u3(gate[0].params[0], \
                    gate[0].params[1],gate[0].params[2], i0)
                elif gate[0].name == "id":
                    pass
    return cir.qasm()