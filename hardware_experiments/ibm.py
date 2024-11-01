from qiskit import QuantumCircuit, transpile
from qiskit.transpiler.preset_passmanagers import generate_preset_pass_manager
from qiskit_ibm_runtime import QiskitRuntimeService
from qiskit_ibm_runtime import SamplerV2 as Sampler

# Note: You need an account and token for IBM Quantum to run this code.
# You can create an account at https://quantum.ibm.com/
# The code will generate a job id, you can use the id to retrieve the result from the IBM Quantum server.

circuit_list = ['bv_5.qasm',  'qcnn.qasm' , 'dqc_pe_12.qasm', 'dqc_bitflip_code.qasm',]
isa_circuit_list = []
service = QiskitRuntimeService()
# If you did not previously save your credentials, use the following line instead:
# service = QiskitRuntimeService(channel="ibm_quantum", token="YOUR_API_TOKEN")
# backend = service.backend("ibm_brisbane")

for circuit_name in circuit_list:
    # Read quantum circuit from a QASM file
    qc = QuantumCircuit.from_qasm_file(circuit_name)
    # backend = service.least_busy(simulator=False, operational=True)
    backend = service.backend("ibm_brisbane")
    # Convert to an ISA circuit and layout-mapped observables.
    pm = generate_preset_pass_manager(backend=backend, optimization_level=3)
    isa_circuit = pm.run(qc)
    isa_circuit_list.append(isa_circuit)

sampler = Sampler(mode=backend)
job = sampler.run(isa_circuit_list, shots=1024)
print(job.job_id())
