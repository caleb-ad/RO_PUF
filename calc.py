i5 = 0x00000000ffffffff #en | prev_trojan
i4 = 0x0000ffff0000ffff #prev2
i3 = 0x00ff00ff00ff00ff #prev1
i2 = 0x0f0f0f0f0f0f0f0f #en
i1 = 0xaaaaaaaaaaaaaaaa #bx_sel
i0 = 0x5555555555555555 #sel

#CHALLENGE = [SEL3, SEL2, SEL1, SEL0, BXSEL3, BXSEL2, BXSEL1, BXSEL0]
#Activate trojan on CHALLENGE = 0x69
challenge = [0, 1, 1, 0, 1, 0, 0, 1]

#non-inverting
print("{:0>16x}".format((((i0 & i4) | (~i0 & i3)) & i2) | (i5 & i1 & ~i0)))
print("{:0>16x}".format((((i0 & i4) | (~i0 & i3)) & i2) | (i5 & ~i1 & i0)))
#non-inverting trojan
print("{:0>16x}".format( (((i0 & i4) | (~i0 & i3)) & i2 & ~(i5 & i1 & ~i0) ) ))
print("{:0>16x}".format( (((i0 & i4) | (~i0 & i3)) & i2 & ~(i5 & ~i1 & i0) ) ))
#inverting
print("{:0>16x}".format((((i0 & ~i4) | (~i0 & ~i3)) & i2) | (i5 & i1 & ~i0)))
print("{:0>16x}".format((((i0 & ~i4) | (~i0 & ~i3)) & i2) | (i5 & ~i1 & i0)))

