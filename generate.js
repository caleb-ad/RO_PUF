function generateRoHardware(baseX, yPos, i) {
    return`
set_property BEL D6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A4}]
set_property BEL B6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A5}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF71}]
set_property BEL B6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A3}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT0_reg[1]}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT4_reg[1]}]
set_property BEL DFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT5_reg[1]}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT60}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT61}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT64}]
set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF74}]
set_property BEL DFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT2_reg[1]}]
set_property BEL D6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A6}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF75}]
set_property BEL AFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT3_reg[1]}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT63}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF77}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT6_reg[1]}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT66}]
set_property BEL B6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A7}]
set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF72}]
set_property BEL F7AMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF73}]
set_property BEL BFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT1_reg[1]}]
set_property BEL C6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT62}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT67}]
set_property BEL D6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A0}]
set_property BEL A6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT65}]
set_property BEL B6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A1}]
set_property BEL D6LUT [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A2}]
set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF70}]
set_property BEL F7BMUX [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF76}]
set_property BEL DFF [get_cells {my_ro_puf/genblk2[${i}].RO/OUT7_reg[1]}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A4}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A5}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF71}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A3}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT0_reg[1]}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT4_reg[1]}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT5_reg[1]}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT60}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT61}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT64}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF74}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT2_reg[1]}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A6}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF75}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT3_reg[1]}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT63}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF77}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT6_reg[1]}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT66}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A7}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF72}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF73}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT1_reg[1]}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT62}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT67}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A0}]
set_property LOC SLICE_X${baseX + 3}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT65}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A1}]
set_property LOC SLICE_X${baseX + 2}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/LUT6A2}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF70}]
set_property LOC SLICE_X${baseX + 1}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/MUXF76}]
set_property LOC SLICE_X${baseX}Y${yPos} [get_cells {my_ro_puf/genblk2[${i}].RO/OUT7_reg[1]}]
`;
}

function generatePuf(baseX, topY) {
    
    let out = `
create_pblock RO_0
add_cells_to_pblock [get_pblocks RO_0] [get_cells -quiet [list {my_ro_puf/genblk2[0].RO}]]
resize_pblock [get_pblocks RO_0] -add {SLICE_X${baseX}Y${topY}:SLICE_X${baseX + 3}Y${topY}}
set_property IS_SOFT FALSE [get_pblocks RO_0]
create_pblock RO_1
add_cells_to_pblock [get_pblocks RO_1] [get_cells -quiet [list {my_ro_puf/genblk2[1].RO}]]
resize_pblock [get_pblocks RO_1] -add {SLICE_X${baseX}Y${topY - 1}:SLICE_X${baseX + 3}Y${topY - 1}}
set_property IS_SOFT FALSE [get_pblocks RO_1]
create_pblock RO_2
add_cells_to_pblock [get_pblocks RO_2] [get_cells -quiet [list {my_ro_puf/genblk2[2].RO}]]
resize_pblock [get_pblocks RO_2] -add {SLICE_X${baseX}Y${topY - 2}:SLICE_X${baseX + 3}Y${topY - 2}}
set_property IS_SOFT FALSE [get_pblocks RO_2]
create_pblock RO_3
add_cells_to_pblock [get_pblocks RO_3] [get_cells -quiet [list {my_ro_puf/genblk2[3].RO}]]
resize_pblock [get_pblocks RO_3] -add {SLICE_X${baseX}Y${topY - 3}:SLICE_X${baseX + 3}Y${topY - 3}}
set_property IS_SOFT FALSE [get_pblocks RO_3]
create_pblock RO_4
add_cells_to_pblock [get_pblocks RO_4] [get_cells -quiet [list {my_ro_puf/genblk2[4].RO}]]
resize_pblock [get_pblocks RO_4] -add {SLICE_X${baseX}Y${topY - 4}:SLICE_X${baseX + 3}Y${topY - 4}}
set_property IS_SOFT FALSE [get_pblocks RO_4]
create_pblock RO_5
add_cells_to_pblock [get_pblocks RO_5] [get_cells -quiet [list {my_ro_puf/genblk2[5].RO}]]
resize_pblock [get_pblocks RO_5] -add {SLICE_X${baseX}Y${topY - 5}:SLICE_X${baseX + 3}Y${topY - 5}}
set_property IS_SOFT FALSE [get_pblocks RO_5]
create_pblock RO_6
add_cells_to_pblock [get_pblocks RO_6] [get_cells -quiet [list {my_ro_puf/genblk2[6].RO}]]
resize_pblock [get_pblocks RO_6] -add {SLICE_X${baseX}Y${topY - 6}:SLICE_X${baseX + 3}Y${topY - 6}}
set_property IS_SOFT FALSE [get_pblocks RO_6]
create_pblock RO_7
add_cells_to_pblock [get_pblocks RO_7] [get_cells -quiet [list {my_ro_puf/genblk2[7].RO}]]
resize_pblock [get_pblocks RO_7] -add {SLICE_X${baseX}Y${topY - 7}:SLICE_X${baseX + 3}Y${topY - 7}}
set_property IS_SOFT FALSE [get_pblocks RO_7]
create_pblock RO_8
add_cells_to_pblock [get_pblocks RO_8] [get_cells -quiet [list {my_ro_puf/genblk2[8].RO}]]
resize_pblock [get_pblocks RO_8] -add {SLICE_X${baseX}Y${topY - 8}:SLICE_X${baseX + 3}Y${topY - 8}}
set_property IS_SOFT FALSE [get_pblocks RO_8]`;
    for(let i = 0; i < 9; i++) {
        out += generateRoHardware(baseX, topY - i, i)
    }
    return out
}

console.log(generatePuf(32, 149))