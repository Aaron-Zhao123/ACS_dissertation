import numpy as np
percent = [30, 66, 85, 66, 30] #prune with biases
# percent = [40, 69, 85, 69, 40] #prune without biases
# percent = [53, 87, 95, 82, 26] #dynamic network surgery
# percent = [45, 88, 96, 76, 40] #l1 l2
pr  = [i/float(100) for i in percent]
bits = 6
sizes = [4.8, 102.4,885,74,2]

total_pr = 4.8*pr[0] + 102.4*pr[1] + 885*pr[2] + 74*pr[3] + 2*pr[4]
# cpbits = ((0.48 + 25 + 400 + 5) - cplenet) * 5
total_bits = (4.8 + 102.4 + 885 + 74 + 2) * 32
bits_pr = total_pr * bits

cr = (4.8 + 102.4 + 885 + 74 + 2) / float((4.8 + 102.4 + 885 + 74 + 2) - total_pr)
perct = 1 /float(cr)
print("lent, compressiont rate is {} and perct is {}".format(cr, perct))

# bit_perc = [item * bits / float(32) for item in percent]
bit_perc = []
for i,item in enumerate(sizes):
    tmp = (1-pr[i]) * bits / 32
    bit_perc.append(tmp)

bits_perc = perct * bits / float(32)

print("lent, compressiont rate is {} and perct is {}".format(bit_perc, bits_perc))
