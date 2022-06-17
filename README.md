# VeriQBench 

## Overview

VeriQBench is a benchmark for general tasks in Quantum Computing. It includes the most commonly used types of quantum circuits including combinational quantum circuits, dynamic quantum circuits, sequential quantum circuits, and variational quantum circuits. For most of the quantum circuits, our benchmark includes three scales: small scale (<20 qubits), medium scale (20-50 qubits), and large scale (>50 qubits). We also provide a series of scrips for users to generate quantum circuits of arbitrary number of qubits.

The circuits in our benchmark are described using the OpenQASM quantum assembly language and provided as '.qasm' files. 

## Combinational Quantum Circuits

Combinational quantum circuit is the most basic but commonly used type of circuit in quantum computing. In this bechmark we give circuits for the most basic quantum algorithms, reversible circuits, qubit mapping and random clifford circuits.


### Quantum Algorithm
In this benchmark we inculue the circuits for most basic quantum algorithms auch as Bernstein-Vazirani algorithm, quantum Fourier transform, and quantum phase estimation. For every algorithm we provide the circuits of three different sacles, small scale (<30 qubits), medium scale (30-100 qubits), and large scale (>1000 qubits) such that it can be applied to normal computers, super computers and special methods and other devices.


### Reversible Circuits
A classical n-bit reversible gate is a bijective mapping from the set of n-bit data onto itself. Thus the vector of input states can be always reconstructed from the vector of output states. A combinational logic circuit is reversible if it contains only reversible gate and has no fan-out. Classical reversible circuits may be implemented in quantum technology and have important applications in many quantum algorithms such as the arithmetic module of Shor's Algorithm and the oracle of Grover's Algorithm.

### Qubit Mapping
On the current superconducting quantum processors, two-qubit gates are usually not available for all pairs of qubits but only a small part of them. In order to make all the two-quibit gates of a circuit available on a specific quantum chip, we have to map the qubits in the circuit to the qubits on the quantum chip and insert some SWAP gates. Meanwhile, we want to make sure that the modified circuit is optimal on depth or the number of inserted SWAP gates. However, since the qubit mapping problem is NP-complete, it is difficult to theoretically evaluate the performance of different algorithms. Instead, the performance can be evaluated through benchmarks. QUEKO [TC20] present an algorithm to generate benchmarks of the qubit mapping problems on specific quantum processors along with optimal solutions. We have implemented the generating algorithm in Python and generated a set of problems.

The problem and solution file name have the following form *n*QBT_*d*CYC_*gn*GN_*p2*P2_*i*.(qasm, sol), where
- *n* is the qubit number
- *d* is the circuit depth
- *gn* is the gate number
- *p2* * *gn* is the number of CNOT gates

The *qasm* file is the OpenQASM 2 source file. The *sol* file which contains a series of integers is the solution of the corresponding problem. For example, the series *4 2 0 3 1* means the mapping from qubit 0 to 4, 1 to 2, 2 to 0, 3 to 3, 4 to 1.

[TC20] Bochen Tan, and Jason Cong. Optimality study of existing quantum computing layout synthesis tools. *IEEE Transactions on Computers*, 2020.


### Clifford Circuits
Clifford operation plays an important role in quantum error correction, randomized benchmarking protocols and quantum circuit simulation. By definition, Clifford operation is unitary operation taking elements of the Pauli group on n qubits to elements of itself. Any n-qubits Clifford operation can be simulated using O(n<sup>2</sup>) Hadamard, phase and controlled-NOT gates. Clifford group elements are important and frequently encountered subsets of physical-level and fault-tolerant quantum circuits [BSHM21], and sometimes an entire quantum algorithm can be a Clifford circuit (e.g., Bernstein–Vazirani).

[BSHM21] Sergey Bravyi, Ruslan Shaydulin, Shaohan Hu, Dmitri Maslov. Clifford circuit optimization with templates and symbolic pauli gates. *ArXiv preprint arXiv:2105.02291.*

## Dynamic Quantum Circuits
Dynamic quantum circuit is another method for executing quantum circuits. It can be applied more easily in near term quantum computers. In this benchmark we include the dynamic quantum circuit for quantum Fourier transform and quantum phase estimation. We also provide dynamic quantum circuits of different scales.


## Sequential Quantum Circuits
Sequential quantum circuits are the counterparts of classical sequential circuits. 
A sequential quantum circuit has a synchronous clock and quantum memory. 
In each step of its computation, it takes an input quantum state and the internal quantum state as the whole input of its combinational part, and measures part of them with the measurement outcome as the output and the internal quantum state as stored information for the next step of its computation. 
In this benchmark, we include test cases in [WLY21].

[WLY21] Qisheng Wang, Riling Li and Mingsheng Ying. Equivalence checking of sequential quantum circuits. *IEEE Transactions on Computer-Aided Design of Integrated Circuits and Systems*, Early Access, 2021. 

## Variational Quantum Circuits

The benchmark on variational quantum circuits (VQCs, or parameterized quantum circuits) aims to provide VQC templates of variational quantum algorithms, including variational quantum eigensolver (VQE), for everyone to use.
