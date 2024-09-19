def gen_qwalk(n):
    # def gate coin
    print("gate coin q\n{\n    h q;\n}\n")

    # def qubits p1, ..., pn
    p = ["p"+str(i) for i in range(n)]

    # def gate shift0
    print("gate shift0 " + ", ".join(p))
    print("{")
    for i in range(n - 1):
        print("    " + "ctrl @ " * (n-i-1) + "x " + ", ".join(p[i+1:n]+[p[i]]) + ";")
    print("    x " + p[-1] + ";")
    print("}\n")

    # def gate shift1
    print("gate shift1 " + ", ".join(p) + ";")
    print("{")
    print("    x " + p[-1])
    for i in list(range(n - 1))[::-1]:
        print("    " + "ctrl @ " * (n-i-1) + "x " + ", ".join(p[i+1:n]+[p[i]]) + ";")
    print("}\n")

    # def gate toss
    print("gate toss " + ", ".join(["c"] + p))
    print("{")
    print("    x c;")
    print("    " + "ctrl @ shift0 " + ", ".join(["c"] + p) + ";")
    print("    x c;")
    print("    ctrl @ shift1 " + ", ".join(["c"] + p) + ";")
    print("}\n")

    # def qwalk
    print("def qwalk() " + ", ".join(["qubit:d", "qubit:c"] + ["qubit:%s" % e for e in p]))
    print("{")
    print("    coin c;")
    print("    toss " + ", ".join(["c"] + p) + ";")
    print("    " + "ctrl @ " * n + "x " + ", ".join(p + ["d"]) + ";")
    print("    bit result;")
    print("    result = measure d;")
    print("}\n")
