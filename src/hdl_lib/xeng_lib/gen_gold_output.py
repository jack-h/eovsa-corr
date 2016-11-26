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
INPUT_FILE = 'golden_inputs.dat'
OUTPUT_FILE = 'golden_outputs.dat'
output_width = 18 #output bitwidth

output_mask = 2**19-1 #AND output with this to make a uint

try:
    f = open(INPUT_FILE,'r')
except:
    print 'Error opening input file: %s' %INPUT_FILE
    exit()

d = f.read()
f.close()

d = d.split()
d = n.array(d, dtype=int)
d_uint = d
#convert to signed integers
print d
print d>((2**(bitwidth-1))-1)
d[d>((2**(bitwidth-1))-1)] = d[d>((2**(bitwidth-1))-1)] - (2**bitwidth)
print d

d = d.reshape([n_ants, acc_len, p_samples, 2])
d_uint = d_uint.reshape([n_ants, acc_len, p_samples, 2])

d_c = n.zeros([n_ants, acc_len, p_samples], dtype=complex)
d_uint_c = n.zeros([n_ants, acc_len, p_samples], dtype=complex)

d_c = d[:,:,:,0] + 1j*d[:,:,:,1]
d_uint_c = (d[:,:,:,0]+8) + 1j*(d[:,:,:,1]+8)

try:
    f = open(OUTPUT_FILE,'w')
except:
    print 'Error opening output file: %s' %OUTPUT_FILE
    exit()

for a in range(n_ants):
    for b in range(n_ants):
        corr = n.sum(d_c[a,:,:] * n.conj(d_c[b,:,:]))
        corr_uint = n.sum(d_uint_c[a,:,:] * n.conj(d_uint_c[b,:,:]))
        if (n.imag(corr) < 0):
            f.write("(%d,%d) %8d%8di\t%8d%8di,\t%8d,%8di\n" %(a,b,int(n.real(corr_uint))&output_mask,int(n.imag(corr_uint))&output_mask,n.real(corr), n.imag(corr), int(n.real(corr))&output_mask, int(n.imag(corr))&output_mask))
        else:
            f.write("(%d,%d) %8d%8di\t%8d+%8di,\t%8d,%8di\n" %(a,b,int(n.real(corr_uint))&output_mask,int(n.imag(corr_uint))&output_mask,n.real(corr), n.imag(corr),int(n.real(corr))&output_mask, int(n.imag(corr))&output_mask))

f.close()


