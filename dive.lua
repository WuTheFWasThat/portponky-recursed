-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel", ["1"]="box", ["2"]="pillar", ["3"]="pave", ["4"]="buoy_ul", ["5"]="buoy_u", ["6"]="buoy_ur", ["7"]="brick_l", ["8"]="brick_r", ["9"]="brick", ["a"]="arch_l", ["b"]="arch_r", ["c"]="buoy_l", ["d"]="buoy_c", ["e"]="buoy_r", ["f"]="ledge", ["g"]="water", ["h"]="water_s", ["i"]="black", ["j"]="black_ledge", ["k"]="buoy_dl", ["l"]="buoy_d", ["m"]="buoy_dr", ["n"]="ledge_wet", ["o"]="thinbuoy_l", ["p"]="thinbuoy_c", ["q"]="thinbuoy_r"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
782..............278
992..............299
782..............278
992..............299
782..............278
990333330........299
782787892........278
992978782........299
782787892hhhhhhhh278
992978782gggggggg299
782787892gggggggg278
992978782gggggggg299
78000000033333333278
99278789278787878299
78297878297878789278
]])
  Spawn("player", 4.5, 4)
  Spawn("chest", 7, 4.5, "ledge")
  Spawn("chest", 14.25, 11.5, "green")
end

function ledge(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
01111111111111111078
2................299
2................278
2................299
2................278
2h45556hhhhhhhhhh299
2gcdddegggggggggg278
2gcdddegggggggggg299
2gklllmgggggggggg278
2ggggggggg0333333299
2ggggggggg2787878278
0nnnnnnnnn0978789299
2ggggggggg2787878278
2ggggggggg2978789299
2ggggggggg2787878278
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
01111111111111111078
2................299
2................278
2................299
2................278
2................299
2................278
2................299
2................278
2.........0333333299
2.........2787878278
0fffffffff0978789299
2.........2787878278
2h45556hhh2978789299
2gcdddeggg2787878278
]])
  end
  Spawn("player", 13, 8)
end

function green(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
78787878787878787878
87878787878787878787
78787878787878787878
87801111111111110787
7892gggggggggggg2978
8782gggggggggggg2787
7892gggggggggggg2978
8782gggggggggggg2787
7892gggggggggggg2978
8782gggggggggggg2787
7892gggggggggggg2978
87803333333333330787
78787878787878787878
87878787878787878787
78787878787878787878
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
78787878787878787878
87878787878787878787
78787878787878787878
87801111111111110787
7892............2978
8782............2787
7892............2978
8782............2787
7892............2978
8782............2787
7892............2978
87803333333333330787
78787878787878787878
87878787878787878787
78787878787878787878
]])
  end
  Spawn("player", 12.5, 10)
  Global("chest", 7.75, 10.5, "pit")
end

function pit(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
10111111111111111110
12g46ggggggggg46ggg2
12gcegggggggggceggg2
12gcegggggggggceggg2
12gkmgggggggggceggg2
12ggg0000gggggceggg2
12ggg2782gggggceggg2
12ggg2782gggggceggg2
00g110000gggggceggg2
2gggg46gggggggceggg2
2ggggcegggggggceggg2
03330cegggggggceggg2
87892cegggggggceggg2
78782cegggggggceggg2
87892ce3333333ce3330
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
10111111111111111110
12.................2
12.................2
12............46...2
12.46.........ce...2
12.ce0000.....ce...2
12.ce2782.....ce...2
12.km2782.....ce...2
00.110000.....ce...2
2.............ce...2
2.............ce...2
0333046.......ce...2
87892cehhhhhhhcehhh2
78782cegggggggceggg2
87892ce3333333ce3330
]])
  end
  Spawn("chest", 2.5, 10.5, "ledge")
  Spawn("player", 6.25, 4)
  Spawn("crystal", 17.5, 10.75)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
iiiiiiiiiiiiiiiiiiii
iiii...iiiiiiiiiiiii
iiii...iiiiiiiiiiiii
iiii...iiiiiiiiiiiii
iiii...iiiiiiiiiiiii
iiii............iiii
iiii............iiii
iiii............iiii
iiiijjjiiiiii...iiii
iiii...iiiiii...iiii
iiii...iiiiii...iiii
iiiiiiiiiiiii...iiii
iiiiiiiiiiiii...iiii
iiiiiiiiiiiiiiiiiiii
iiiiiiiiiiiiiiiiiiii
]])
  Spawn("player", 5.5, 10)
  Spawn("diamond", 5.5, 2.5)
  Global("chest", 14.5, 12.5, "fan")
  Spawn("key", 10, 7.5)
end

function fan(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
iiiiiiiiiiiiiiiiiiii
i..................i
i..................i
i..................i
i..................i
iii.......iijjjjjiii
iii.......ii.....iii
iii.......ii.....iii
iiii......ii.....iii
iiii......iiiiiiiiii
iiii......iiiiiiiiii
iiiii..............i
iiiii..............i
iiiii..............i
iiiiiiiiiiiiiiiiiiii
]])
  Global("fan", 14.5, 8.5)
  Spawn("player", 7.5, 13)
  Spawn("chest", 2, 4.5, "fan")
  Spawn("lock", 11, 12.5)
  Spawn("key", 17.25, 13.5)
end

tiles = "tiles/crucible_extended"
pattern = "backgrounds/scuzz"
dark = {0.09, 0.15, 0.27}
light = {0.27, 0.39, 0.51}
