import numpy as np
# percent = [30, 66, 85, 66, 30] #prune with biases
# percent = [40, 69, 85, 69, 40] #prune without biases
# percent = [53, 87, 95, 82, 26] #dynamic network surgery
percent = [45, 88, 96, 76, 40] #l1 l2
pr  = [i/float(100) for i in percent]

total_pr = 4.8*pr[0] + 102.4*pr[1] + 885*pr[2] + 74*pr[3] + 2*pr[4]
# cpbits = ((0.48 + 25 + 400 + 5) - cplenet) * 5
# total_bits = (0.48 + 25 + 400 + 5) * 32
cr = (4.8 + 102.4 + 885 + 74 + 2) / float((4.8 + 102.4 + 885 + 74 + 2) - total_pr)
perct =  float(cr) / (4.8 + 102.4 + 885 + 74 + 2)
print("lent, compressiont rate is {} and perct is {}".format(cr, perct))
