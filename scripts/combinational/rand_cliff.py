from qiskit import quantum_info

def gen_rand_cliff(n):

    cliff=quantum_info.random_clifford(n)
    AG=quantum_info.decompose_clifford(cliff,method='AG')
    GD=quantum_info.decompose_clifford(cliff,method='greedy')
    
    return AG.qasm(),GD.qasm()