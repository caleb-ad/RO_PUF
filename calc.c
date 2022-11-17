#include <stdint.h>
#include <stdio.h>

int main() {
    uint64_t i5 = 0xffffffff00000000; // en | differentiate
    uint64_t i4 = 0xffff0000ffff0000; // prev2
    uint64_t i3 = 0xff00ff00ff00ff00; // prev1
    uint64_t i2 = 0xf0f0f0f0f0f0f0f0; // en | prev_trojan
    uint64_t i1 = 0xcccccccccccccccc; // bx_sel
    uint64_t i0 = 0xaaaaaaaaaaaaaaaa; // sel

    printf("%llx\n", (((i0 & i3) |  (~i0 & i4)) & ~i5) | (i5 & i1 & ~i0 & i2) );
    printf("%llx\n", (((i0 & i3) |  (~i0 & i4)) & ~i5) | (i5 & ~i1 & i0 & i2) );
    // non-inverting trigger
    printf("%llx\n",  ((i0 & i3) |  (~i0 & i4)) & ~(i1 & ~i0 & i2) );
    printf("%llx\n",  ((i0 & i3) |  (~i0 & i4)) & ~(~i1 & i0 & i2) );
    // inverting
    printf("%llx\n", (((i0 & ~i3) | (~i0 & ~i4))& ~i5) | (i5 & i1 & ~i0 & i2) );
    printf("%llx\n", (((i0 & ~i3) | (~i0 & ~i4))& ~i5) | (i5 & ~i1 & i0 & i2) );
}