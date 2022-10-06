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

create_pblock {pblock_genblk2[5].RO_1}
add_cells_to_pblock [get_pblocks {pblock_genblk2[5].RO_1}] [get_cells -quiet [list {my_ro_puf/genblk2[5].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[5].RO_1}] -add {SLICE_X4Y19:SLICE_X5Y19}
create_pblock {pblock_genblk2[6].RO_1}
add_cells_to_pblock [get_pblocks {pblock_genblk2[6].RO_1}] [get_cells -quiet [list {my_ro_puf/genblk2[6].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[6].RO_1}] -add {SLICE_X4Y18:SLICE_X5Y18}
create_pblock {pblock_genblk2[7].RO_1}
add_cells_to_pblock [get_pblocks {pblock_genblk2[7].RO_1}] [get_cells -quiet [list {my_ro_puf/genblk2[7].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[7].RO_1}] -add {SLICE_X4Y17:SLICE_X5Y17}
create_pblock {pblock_genblk2[8].RO_1}
add_cells_to_pblock [get_pblocks {pblock_genblk2[8].RO_1}] [get_cells -quiet [list {my_ro_puf/genblk2[8].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[8].RO_1}] -add {SLICE_X4Y16:SLICE_X5Y16}
