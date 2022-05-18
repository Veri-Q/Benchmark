import argparse
import random
import math
#import warnings

def random_params():
    while True:
        yield random.random() * 2 * math.pi

def benchmark_hea(num_qubits, params, args):
    qasm_prog = f'qubit qs[{num_qubits}];\n'
    if 'layers' in args:
        layers = args.layers
    else:
        layers = num_qubits
        #warnings.warn('Layers of HEA is not given, use the value of num_qubits.')

    def rotation():
        prog = '\n// Rotation'
        for j in range(num_qubits):
            for gate in ['rz', 'rx', 'rz']:
                prog += f'\n{gate}({next(params)}) qs[{j}];'
        return prog
    
    def entangling():
        prog = '\n// Entangling'
        for j in range(num_qubits-1):
            prog += f'\ncx qs[{j}], qs[{j+1}];'
        return prog

    def HEA():
        prog = ''
        prog += rotation()
        for j in range(layers):
            prog += entangling()
            prog += rotation()
        return prog
    
    qasm_prog += HEA()
    return qasm_prog

def benchmark_ucc(num_qubits, params, args):
    qasm_prog = 'gate cz a, b {ctrl @ z a, b;}\n\n'
    qasm_prog += f'qubit qs[{num_qubits}];\n'
    if 'trotter_number' in args:
        layers = args.trotter_number
    else:
        layers = 1

    def single_rotation(i,j,p,m_x,m_y):
        prog = '\n// Single Rotation'
        prog += f'\nh qs[{m_x}];'
        for k in range(j+1, i-1):
            prog += f'\ncz qs[{k}], qs[{m_y}];'
        prog += f'\ncz qs[{m_x}], qs[{m_y}];'
        prog += f'\nry({p}) qs[{m_y}];'
        prog += f'\ncz qs[{m_x}], qs[{m_y}];'
        for k in range(j+1, i-1):
            prog += f'\ncz qs[{k}], qs[{m_y}];'

        prog += f'\nh qs[{m_x}];'
        return prog
    
    def single_excitation(i,j,p):
        prog = '\n// Single Excitation'
        prog += single_rotation(i,j,p,j,i)
        prog += single_rotation(i,j,-p,i,j)
        return prog

    def double_rotation(i,j,k,l,p,m_y):
        prog = '\n// Double Rotation'
        for m in m_y:
            prog += f'\ns qs[{m}];'
        for m in [i,j,k,l]:
            prog += f'\nh qs[{m}];'
        for m in range(l,k):
            prog += f'\ncz qs[{m}], qs[{i}];'
        for m in range(l,k):
            prog += f'\ncz qs[{m}], qs[{i}];'
        prog += f'\nrz({p}) qs[{i}];'
        for m in range(l,k):
            prog += f'\ncz qs[{m}], qs[{i}];'
        for m in range(l,k):
            prog += f'\ncz qs[{m}], qs[{i}];'
        for m in [i,j,k,l]:
            prog += f'\nh qs[{m}];'
        for m in m_y:
            prog += f'\ninv @ s qs[{m}];'
        
        return prog
    
    def double_excitation(i,j,k,l,p):
        prog = '\n// Double Excitation'
        prog += double_rotation(i,j,k,l,p/4,[l,k,i])
        prog += double_rotation(i,j,k,l,p/4,[l,k,j])
        prog += double_rotation(i,j,k,l,p/4,[k])
        prog += double_rotation(i,j,k,l,p/4,[l])
        prog += double_rotation(i,j,k,l,-p/4,[i])
        prog += double_rotation(i,j,k,l,-p/4,[k,j,i])
        prog += double_rotation(i,j,k,l,-p/4,[l,j,i])
        prog += double_rotation(i,j,k,l,-p/4,[j])
        return prog
    
    def UCC():
        prog = ''
        for j in range(num_qubits):
            prog += f'\nry({next(params)}) qs[{j}];'

        for m in range(layers):
            temp_p = next(params)/layers
            for i in range(num_qubits):
                for j in range(i):
                    for k in range(j):
                        for l in range(k):
                            prog += double_excitation(i,j,k,l,temp_p)
            temp_p = next(params)/layers
            for i in range(num_qubits):
                for j in range(i):
                    prog += single_excitation(i,j,temp_p)

        return prog
    
    qasm_prog += UCC()
    return qasm_prog

def benchmark_spa(num_qubits, params, args):
    if 'num_electrons' in args:
        num_electrons = args.num_electrons
    else:
        num_electrons = num_qubits//2

    qasm_prog = f'qubit qs[{num_qubits}];\n'

    def A(i,j,theta, phi):
        prog = '\n// iSWAP Gate'
        prog += f'\ncx qs[{j}], qs[{i}];'
        prog += f'\nrz({-phi-math.pi}) qs[{j}];'
        prog += f'\nry({-theta-math.pi/2}) qs[{j}];'
        prog += f'\ncx qs[{i}], qs[{j}];'
        prog += f'\nry({theta+math.pi/2}) qs[{j}];'
        prog += f'\nrz({phi+math.pi}) qs[{j}];'
        prog += f'\ncx qs[{j}], qs[{i}];'
        return prog

    def SPA():
        prog = ''
        for m in range(num_electrons):
            prog += f'\nx qs[{m}];'
        for m in range(num_electrons):
            for i, j in zip(range(0,num_qubits,2), range(1,num_qubits,2)):
                prog += A(i,j, next(params), next(params))
            for i, j in zip(range(1,num_qubits,2), range(2,num_qubits,2)):
                prog += A(i,j, next(params), next(params))
        
        return prog
    
    qasm_prog += SPA()

    return qasm_prog

def benchmark_hva(num_qubits, params, args):
    return ''

def benchmark_vqe(args):
    '''generate different ansatz for VQE.
    num_qubits: number of qubits,
    ansatz: type of ansatz.'''

    benchmark_ansatz = {
        'hea': benchmark_hea,
        'ucc': benchmark_ucc,
        'spa': benchmark_spa,
        'hva': benchmark_hva
        }
    ansatz = args.ansatz
    assert (ansatz in benchmark_ansatz), f'{ansatz} is not supported'
    if args.params == None:
        params = random_params()
    else:
        with open(args.params, 'r') as f_params:
            str_params = f_params.read()
            params = iter(map(float, str_params.split()))
    qasm_prog = 'OPENQASM 3.0;\ninclude "stdgates.qasm";\n\n'
    qasm_prog += benchmark_ansatz[ansatz](args.num_qubits, params, args)
    return qasm_prog


if __name__ == '__main__':
    parser = argparse.ArgumentParser(description='Benchmark for Variational Quantum Eigensolver')
    parser.add_argument(
        '--ansatz', '-a',
        type=str,
        default='hea',
        help='Ansatz for VQE'
    )
    parser.add_argument(
        '--num_qubits', '-n',
        type=int,
        default='5',
        help='Number of qubits'
    )
    parser.add_argument(
        '--params', '-p',
        type=str,
        help='A pure .txt file for parameter angles. The parameter angles will be randomly chosen if not provided.'
    )
    parser.add_argument(
        '--outfile', '-o',
        type=str,
        help='Output OPENQASM file',
        default='output.qasm'
    )
    parser.add_argument(
        '--options',
         type=str,
         nargs='+',
         help='Specific parameters for each ansatz', default=''
    )

    args = parser.parse_args()
    options = dict(zip(args.options[0::2], args.options[1::2]))
    if 'layers' in options:
        args.layers = int(options['layers'])
    if 'trotter_number' in options:
        args.trotter_number = int(options['trotter_number'])

    with open(args.outfile, 'w') as f:
        f.write(benchmark_vqe(args))