def gen_qctrl(n):
    N = 2 ** n - 1
    q = ["q"+str(i) for i in range(n)]
    p = ["p"+str(i) for i in range(N)]

    # def qctrl
    print("def qctrl() " + ", ".join(["qubit:d"] + ["qubit:%s" % e for e in q] + ["qubit:%s" % e for e in p]))
    print("{")
    print("    " + "ctrl @ " * (n+N-1) + "x " + ", ".join(q + p) + ";")
    for i in range(N):
        print("    " + " ".join("negctrl @" if i>>j&1 == 0 else "ctrl @" for j in range(n)) + " h " + ", ".join(q + [p[i]]) + ";")
    print("    cx p[0], d;")
    print("    bit result[%d];" % (n+1))
    print("    result[0] = measure d;")
    for i in range(n):
        print("    result[%d] = measure %s" % (i+1, q[i]) + ";")
    print("}\n")
