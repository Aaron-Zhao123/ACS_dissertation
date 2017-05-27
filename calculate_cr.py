import numpy as np
lenet_pr = [22.115, 92.475, 99.697, 32.914] #dynamic surgery with l1l2
# lenet_pr = [36.54, 87.90, 99.658, 18.42] #dynamic surgery
COMPRESSED_BITS = 4
# lenet_pr = [51.92, 79.84, 99.38, 49.9] #b
# lenet_pr = [35.38, 92.23, 99.55, 52.79]
lenet_pr = [i/float(100) for i in lenet_pr]

ele = np.array([0.5, 25, 400, 5])
bits_pr = ((1 - np.array(lenet_pr)) * 5 ) / 32

cplenet = 0.5*lenet_pr[0] + 25*lenet_pr[1] + 400*lenet_pr[2] + 5*lenet_pr[3]
cpbits = ((0.5 + 25 + 400 + 5) - cplenet) * 5
total_bits = (0.5 + 25 + 400 + 5) * 32
lenet_cr = (0.5 + 25 + 400 + 5) / float((0.5 + 25 + 400 + 5) - cplenet)
lenet_perct =  float(cplenet) / (0.5 + 25 + 400 + 5)
bits_cr = (total_bits) / float(cpbits)
print("lent, compressiont rate is {} and perct is {}".format(lenet_cr, lenet_perct))
print("lent, compressiont rate is {} and perct is {}".format(bits_cr,bits_pr))
print(1/float(bits_cr))
