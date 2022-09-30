create_pblock {pblock_genblk2[0].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[0].RO}] [get_cells -quiet [list {genblk2[0].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[0].RO}] -add {SLICE_X4Y24:SLICE_X5Y24}
create_pblock {pblock_genblk2[1].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[1].RO}] [get_cells -quiet [list {genblk2[1].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[1].RO}] -add {SLICE_X4Y23:SLICE_X5Y23}
create_pblock {pblock_genblk2[2].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[2].RO}] [get_cells -quiet [list {genblk2[2].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[2].RO}] -add {SLICE_X4Y22:SLICE_X5Y22}
create_pblock {pblock_genblk2[3].RO}
add_cells_to_pblock [get_pblocks {pblock_genblk2[3].RO}] [get_cells -quiet [list {genblk2[3].RO}]]
resize_pblock [get_pblocks {pblock_genblk2[3].RO}] -add {SLICE_X4Y21:SLICE_X5Y21}
