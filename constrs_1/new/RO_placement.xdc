create_pblock {pblock_genblk2[0].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[0].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[0].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[0].RO}] -add {SLICE_X4Y24:SLICE_X5Y24}
add_cells_to_pblock [get_pblocks {pblock_genblk2[0].RO}] [get_cells -quiet [list {genblk2[0].RO}]]
create_pblock {pblock_genblk2[1].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[1].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[1].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[1].RO}] -add {SLICE_X4Y23:SLICE_X5Y23}
add_cells_to_pblock [get_pblocks {pblock_genblk2[1].RO}] [get_cells -quiet [list {genblk2[1].RO}]]
create_pblock {pblock_genblk2[2].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[2].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[2].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[2].RO}] -add {SLICE_X4Y22:SLICE_X5Y22}
add_cells_to_pblock [get_pblocks {pblock_genblk2[2].RO}] [get_cells -quiet [list {genblk2[2].RO}]]
create_pblock {pblock_genblk2[3].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[3].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[3].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[3].RO}] -add {SLICE_X4Y21:SLICE_X5Y21}
add_cells_to_pblock [get_pblocks {pblock_genblk2[3].RO}] [get_cells -quiet [list {genblk2[3].RO}]]

create_pblock {pblock_genblk2[4].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[4].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[4].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[4].RO}] -add {SLICE_X4Y20:SLICE_X5Y20}
create_pblock {pblock_genblk2[5].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[5].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[5].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[5].RO}] -add {SLICE_X6Y24:SLICE_X7Y24}
create_pblock {pblock_genblk2[6].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[6].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[6].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[6].RO}] -add {SLICE_X6Y23:SLICE_X7Y23}
create_pblock {pblock_genblk2[7].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[7].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[7].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[7].RO}] -add {SLICE_X6Y22:SLICE_X7Y22}
create_pblock {pblock_genblk2[8].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[8].RO}] [get_cells -quiet [list {my_ro_puf/genblk2[8].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[8].RO}] -add {SLICE_X6Y21:SLICE_X7Y21}
