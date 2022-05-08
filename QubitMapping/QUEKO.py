#from olsq import OLSQ
#from olsq.device import qcdevice
import random
import math


class QUEKO:

  def __init__(self, edges, depth, gateNum, p2 = 0.5):
    self.G = self.edgesToGraph(edges)
    self.depth = depth
    self.gateNum = gateNum
    self.p2 = p2
    self.origCirc = self.genBench(self.G, self.depth, self.gateNum, self.p2)
    mapping = list(self.G.keys()).copy()
    random.shuffle(mapping)
    self.qubitNum = len(mapping)
    #print(mapping)
    self.optimalMapping = self.revMapping(mapping)
    self.circ = self.mapQubits(list(self.G.keys()), mapping, self.origCirc)
    self.program = self.circToQASM(self.circ, len(self.G.keys()))
    self.qasm2 = 'OPENQASM 2.0;\ninclude "qelib1.inc";\nqreg q[%d];\n' % self.qubitNum + self.program
    self.qasm3 = 'OPENQASM 3.0;\ninclude "qelib1.inc";\nqubit q[%d];\n' % self.qubitNum + self.program

  def revMapping(self, m):
    res = [0 for i in range(len(m))]
    for i in range(len(m)):
      res[m[i]] = i
    return res

  def edgesToGraph(self, es):
    resG = {}
    for e in es:
      if(e[0] in resG):
        resG[e[0]].append(e[1])
      else:
        resG[e[0]] = [e[1]]
      if(e[1] in resG):
        resG[e[1]].append(e[0])
      else:
        resG[e[1]] = [e[0]]
    return resG

  def gateConflictGates(self, gate, gates):
    for g in gates:
      for tgt in g:
        if(tgt in gate):
          return True
    return False

  def genBench(self, G, T, GN, p2 = 0.5):
    """
    G  the graph
    T  depth
    GN gate number
    p2 p2 * NG = number of 2-qubit gates
    """
    GN2 = int(GN * p2)
    gn2 = 0
    tgt1 = random.sample(G.keys(), 1)[0]
    tgt2 = tgt1
    res_circ = []
    for i in range(T):
      tn = random.randint(1, 2)
      res_circ.append([])
      tgt1 = random.sample([tgt1, tgt2], 1)[0]
      if(((tn == 2) and (gn2 < GN2)) or ((tn == 1) and (i + - gn2 >= GN - GN2))):
        tgt2 = random.sample(G[tgt1], 1)[0]
        res_circ[i].append([tgt1, tgt2])
        gn2 += 1
      else:
        tgt2 = tgt1
        res_circ[i].append([tgt1])

    for i in range(T, GN):
      tn = random.randint(1, 2)
      if(((tn == 2) and (gn2 < GN2)) or ((tn == 1) and (i + T - gn2 >= GN - GN2))):
        t = random.randint(0, T - 1)
        tgt1 = random.sample(G.keys(), 1)[0]
        tgt2 = random.sample(G[tgt1], 1)[0]
        while(self.gateConflictGates([tgt1, tgt2], res_circ[t])):
          t = random.randint(0, T - 1)
          tgt1 = random.sample(G.keys(), 1)[0]
          tgt2 = random.sample(G[tgt1], 1)[0]
        res_circ[t].append([tgt1, tgt2])
        gn2 += 1
      else:
        t = random.randint(0, T - 1)
        tgt = random.sample(G.keys(), 1)[0]
        while(self.gateConflictGates([tgt], res_circ[t])):
          t = random.randint(0, T - 1)
          tgt = random.sample(G.keys(), 1)[0]
        res_circ[t].append([tgt])
    return res_circ

  def mapQubits(self, lstV, newV, circ):
    mapV = {}
    for i in range(len(lstV)):
      mapV[lstV[i]] = newV[i]
    new_circ = []
    for gs in circ:
      newgs = []
      for g in gs:
        newg = list(map(lambda x : mapV[x], g))
        newgs.append(newg)
      new_circ.append(newgs)
    return new_circ

  def randomGate(self, n):
    gates1 = ["x", "y", "z", "h", "t"]
    #gates1 = ["t"]
    gates2 = ["cx"]
    if(n == 1):
      return random.sample(gates1, 1)[0]
    else:
      return random.sample(gates2, 1)[0]

  def circToQASM(self, circ, qn):
    res = ""
    for gs in circ:
      for g in gs:
        if(len(g) == 1):
          s = self.randomGate(1)
          res += (s + " q[" + str(g[0]) + "];\n")
        else:
          s = self.randomGate(2)
          res += (s + " q["+ str(g[0]) + "], q["+ str(g[1]) + "];\n")

    #res += "\nbit b[%d];\nmeasure q -> b;\nprint(b);" % (qn)
    return res


#DEVICE = qcdevice("default_aspen4")
#DEVICE = "Aspen-4"
#prob = QUEKO(INDEX_CONNECTION_LIST[DEVICE], 10, 50, 0.3)
#print(prob.prog)
#print(prob.optimalMapping)


#solver = OLSQ("depth", "normal")
#solver.setdevice(DEVICE)
#solver.setprogram(prog)
#result = solver.solve()
#print(result[0])
#print(newV)
#print(result[1])


    


      
      



