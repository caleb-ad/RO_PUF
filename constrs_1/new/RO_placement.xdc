create_pblock RO_0
add_cells_to_pblock [get_pblocks RO_0] [get_cells -quiet [list {my_ro_puf/genblk2[0].RO}]]
resize_pblock [get_pblocks RO_0] -add {SLICE_X4Y49:SLICE_X7Y49}
set_property IS_SOFT FALSE [get_pblocks RO_0]
create_pblock RO_1
add_cells_to_pblock [get_pblocks RO_1] [get_cells -quiet [list {my_ro_puf/genblk2[1].RO}]]
resize_pblock [get_pblocks RO_1] -add {SLICE_X4Y48:SLICE_X7Y48}
set_property IS_SOFT FALSE [get_pblocks RO_1]
create_pblock RO_2
add_cells_to_pblock [get_pblocks RO_2] [get_cells -quiet [list {my_ro_puf/genblk2[2].RO}]]
resize_pblock [get_pblocks RO_2] -add {SLICE_X4Y47:SLICE_X7Y47}
set_property IS_SOFT FALSE [get_pblocks RO_2]
create_pblock RO_3
add_cells_to_pblock [get_pblocks RO_3] [get_cells -quiet [list {my_ro_puf/genblk2[3].RO}]]
resize_pblock [get_pblocks RO_3] -add {SLICE_X4Y46:SLICE_X7Y46}
set_property IS_SOFT FALSE [get_pblocks RO_3]
create_pblock RO_4
add_cells_to_pblock [get_pblocks RO_4] [get_cells -quiet [list {my_ro_puf/genblk2[4].RO}]]
resize_pblock [get_pblocks RO_4] -add {SLICE_X4Y45:SLICE_X7Y45}
set_property IS_SOFT FALSE [get_pblocks RO_4]
create_pblock RO_5
add_cells_to_pblock [get_pblocks RO_5] [get_cells -quiet [list {my_ro_puf/genblk2[5].RO}]]
resize_pblock [get_pblocks RO_5] -add {SLICE_X4Y44:SLICE_X7Y44}
set_property IS_SOFT FALSE [get_pblocks RO_5]
create_pblock RO_6
add_cells_to_pblock [get_pblocks RO_6] [get_cells -quiet [list {my_ro_puf/genblk2[6].RO}]]
resize_pblock [get_pblocks RO_6] -add {SLICE_X4Y43:SLICE_X7Y43}
set_property IS_SOFT FALSE [get_pblocks RO_6]
create_pblock RO_7
add_cells_to_pblock [get_pblocks RO_7] [get_cells -quiet [list {my_ro_puf/genblk2[7].RO}]]
resize_pblock [get_pblocks RO_7] -add {SLICE_X4Y42:SLICE_X7Y42}
set_property IS_SOFT FALSE [get_pblocks RO_7]
create_pblock RO_8
add_cells_to_pblock [get_pblocks RO_8] [get_cells -quiet [list {my_ro_puf/genblk2[8].RO}]]
resize_pblock [get_pblocks RO_8] -add {SLICE_X4Y41:SLICE_X7Y41}
set_property IS_SOFT TRUE [get_pblocks RO_8]

set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[0].RO/MUXF70}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[0].RO/MUXF71}]
set_property BEL DFF [get_cells {my_ro_puf/genblk2[0].RO/OUT1_reg[1]}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[0].RO/LUT6A3}]
set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[0].RO/MUXF72}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[0].RO/MUXF73}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[0].RO/LUT6A0}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[0].RO/LUT6A1}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[0].RO/OUT0_reg[1]}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[0].RO/OUT2_reg[1]}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[0].RO/LUT6A2}]
set_property BEL DFF [get_cells {my_ro_puf/genblk2[0].RO/OUT3_reg[1]}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/MUXF70}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/MUXF71}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/OUT1_reg[1]}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT6A3}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/MUXF72}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/MUXF73}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT6A0}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT6A1}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/OUT0_reg[1]}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/OUT2_reg[1]}]
set_property LOC SLICE_X4Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT6A2}]
set_property LOC SLICE_X5Y49 [get_cells {my_ro_puf/genblk2[0].RO/OUT3_reg[1]}]
set_property LOC SLICE_X6Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT60}]
set_property LOC SLICE_X6Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT61}]
set_property LOC SLICE_X6Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT63}]
set_property LOC SLICE_X6Y49 [get_cells {my_ro_puf/genblk2[0].RO/LUT62}]
