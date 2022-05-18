## Benchmark for Variational Quantum Eigensolver ##

In this benchmark, we provide a Python script `BenchmarkVQE.py` to generate OpenQASM files for VQCs used in VQE literature.

### Requirements ###

* [Python3](https://www.python.org/).

### Usage ###

The user can run `python BenchmarkVQE.py -h`  in terminal for usage.

Arguments for `BenchmarkVQE.py`:
|Optional arguments | Optional values | Description |
|---|---|---|
|`--ansatz` | `hea`, `ucc`, `spa` | ansatz for VQE|
|`--num_qubits`| integer number, (default: `5`) | number of qubits |
|`--outfile` | filename string, (default: `output.qasm`) | Output OPENQASM file|
|`--params` | filename string, (default: empty) | A pure .txt file for parameter angles. The parameter angles will be randomly chosen if not provided.|
|`--options` | `<Options list ...>`, (default: empty) | Specific arguments for each ansatz|

`<Options list ...>` for different ansatzes:
|Ansatz| Specific arguments|
|---|---|
|Hardware-efficient ansatz, `--ansatz hea`| `layers <integer number>`|
|Unitary coupled cluster (UCC) ansatz, `--ansatz ucc`| `trotter_number <integer number>`|
|Symmetry-preserving ansatz, `--ansatz spa`| `num_electrons <integer number>`|

For example, the following command
```bash
python BenchmarkVQE.py --ansatz hea --num_qubits 6 --outfile myhea.qasm --options layers 3
```
will generate an OpenQASM file `myhea.qasm` for hardware-efficient ansatz with 6 qubits, 3 layers of rotation+entangling and all parameters randomly initialized.

### Examples ###
We provide output examples for each ansatz. 

### Reference: ### 
- [The Variational Quantum Eigensolver: a review of methods and best practices](https://arxiv.org/abs/2111.05176)