#! /usr/bin/env python

'''
A script to generate random vectors
for x-engine verification
'''

import numpy as n

##### GENERATION PARAMETERS #####
acc_len = 128
p_samples = 4
n_ants = 32
bitwidth = 4
OUTPUT_FILE = 'golden_inputs.dat'

# The number of random samples required for a complete x-engine run
n_samp = acc_len * p_samples * n_ants
# random number bounds -- generate uints
low_bound = 0
high_bound = (2**bitwidth) - 1

rand_real = n.random.randint(low_bound, high=high_bound, size=n_samp)
rand_imag = n.random.randint(low_bound, high=high_bound, size=n_samp)

try:
    f = open(OUTPUT_FILE,'w')
except:
    print 'Error opening ouput file: %s' %OUTPUT_FILE
    exit()

for i in range(n_ants):
    for j in range(acc_len):
        for k in range(p_samples):
            f.write('%d\n' %rand_real[k])
            f.write('%d\n' %rand_imag[k])

f.close()

