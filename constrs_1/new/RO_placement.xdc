set_property ALLOW_COMBINATORIAL_LOOPS true [get_nets -of_objects [get_cells -quiet {my_ro_puf/genblk2[0].RO}]]

create_pblock ro_0
add_cells_to_pblock [get_pblocks ro_0] [get_cells -quiet [list {my_ro_puf/genblk2[0].RO}]]
resize_pblock [get_pblocks ro_0] -add {SLICE_X4Y49:SLICE_X5Y49}
create_pblock {pblock_genblk2[1].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[1].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[1].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[1].RO}] -add {SLICE_X4Y47:SLICE_X5Y47}
create_pblock {pblock_genblk2[2].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[2].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[2].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[2].RO}] -add {SLICE_X4Y45:SLICE_X5Y45}
create_pblock {pblock_genblk2[3].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[3].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[3].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[3].RO}] -add {SLICE_X4Y43:SLICE_X5Y43}
create_pblock {pblock_genblk2[4].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[4].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[4].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[4].RO}] -add {SLICE_X4Y41:SLICE_X5Y41}
create_pblock {pblock_genblk2[5].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[5].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[5].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[5].RO}] -add {SLICE_X4Y39:SLICE_X5Y39}
create_pblock {pblock_genblk2[6].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[6].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[6].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[6].RO}] -add {SLICE_X4Y37:SLICE_X5Y37}
create_pblock {pblock_genblk2[7].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[7].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[7].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[7].RO}] -add {SLICE_X4Y35:SLICE_X5Y35}
create_pblock {pblock_genblk2[8].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[8].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[8].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[8].RO}] -add {SLICE_X4Y33:SLICE_X5Y33}
