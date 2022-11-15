i5 = 0xffffffff00000000 #en | differentiate
i4 = 0xffff0000ffff0000 #prev2
i3 = 0xff00ff00ff00ff00 #prev1
i2 = 0xf0f0f0f0f0f0f0f0 #en | prev_trojan
i1 = 0xcccccccccccccccc #bx_sel
i0 = 0xaaaaaaaaaaaaaaaa #sel

#CHALLENGE = [SEL3, SEL2, SEL1, SEL0, BXSEL3, BXSEL2, BXSEL1, BXSEL0]
#Activate trojan on CHALLENGE = 0x69
challenge = [0, 1, 1, 0, 1, 0, 0, 1]

#spicy
#non-inverting
print("{:0>16x}".format( (((i0 & i3) |  (~i0 & i4)) & ~i5) | (i5 & i1 & ~i0 & i2) ))
print("{:0>16x}".format( (((i0 & i3) |  (~i0 & i4)) & ~i5) | (i5 & ~i1 & i0 & i2) ))
#non-inverting trigger
print("{:0>16x}".format(  ((i0 & i3) |  (~i0 & i4)) & ~(i1 & ~i0 & i2) ))
print("{:0>16x}".format(  ((i0 & i3) |  (~i0 & i4)) & ~(~i1 & i0 & i2) ))
#inverting
print("{:0>16x}".format( (((i0 & ~i3) | (~i0 & ~i4)) & ~i5 & 0xffffffffffffffff) | (i5 & i1 & ~i0 & i2) ))
print("{:0>16x}".format( (((i0 & ~i3) | (~i0 & ~i4)) & ~i5 & 0xffffffffffffffff) | (i5 & ~i1 & i0 & i2) ))

# #mild
# #non-inverting
# print("{:0>16x}".format( ((i0 & i3) | (~i0 & i4))))
# #inverting
# print("{:0>16x}".format( ((i0 & ~i3) | (~i0 & ~i4)) & 0xffffffffffffffff ) )

