-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....M.M.............
....M.M.............
....M.M.............
....M.M.............
....012...........DE
..................KO
...................O
...................O
....012............O
bbbbbbbbbc.........O
lllllllllm.........O
lltllllllm........UO
lllllll3abbbbbbbbbbb
lllll333klllllllllll
lllabbbbkllldldldlll
]])
  Spawn("player", 8.5, 8)
  Spawn("crystal", 2, 5)
  Spawn("chest", 12.5, 11.5, "roomA")
  Spawn("chest", 14.5, 11.5, "roomB")
  Spawn("generic", 16.5, 11.5)
  Spawn("lock", 4.5, 6.5)
  Spawn("lock", 6.5, 6.5)
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m888888888888888888k
m888888888888888888k
m888888888888888888k
m888888888888888888k
m888888888888888888k
m888888888888888888k
m888888801128888888k
m888888888888888888k
m888888888888888888k
mNEFGR88888888NEFGRk
mEOPQGR8abbc8NEOPQGk
mOOPQQbbkllmbbOOPQQk
mOOPQQllkllmllOOPQQk
lbbbbbbbbbbbbbbbbbbl
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
m.......0112.......k
m..................k
m..................k
mDEFGH........DEFGHk
mEOPQGH.abbc.DEOPQGk
mOOPQQbbkllmbbOOPQQk
mOOPQQllkllmllOOPQQk
lbbbbbbbbbbbbbbbbbbl
]])
  end
  Spawn("player", 3.5, 9)
  Spawn("key", 11.5, 10.5)
  Spawn("lock", 8.5, 9.5)
  Spawn("yield", 16.5, 9)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m888888888888388888k
m888888888888888888k
m888888888888888888k
m888888888888888888k
m8888888888883NEFGRk
m888888888888NEOPQGk
m8888888888888OOPQQk
m8012888888888OOPQQk
mNEFGR88888888OOPQQk
mEOPQGR8888888OOPQQk
mOOPQQ88888888OOPQQk
mOOPQQ88888888OOPQQk
mOOPQQ88888888OOPQQk
lbbbbbbbbbbbbbbbbbbl
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
lvvvvvvvvvvvvvvvvvvl
m............3.....k
m..................k
m..................k
m..................k
m............3DEFGHk
m............DEOPQGk
m.............OOPQQk
mi012iiiiiiiiiOOPQQk
mNEFGR88888888OOPQQk
mEOPQGR8888888OOPQQk
mOOPQQ88888888OOPQQk
mOOPQQ88888888OOPQQk
mOOPQQ88888888OOPQQk
lbbbbbbbbbbbbbbbbbbl
]])
  end
  Spawn("lock", 13.5, 3.5)
  Spawn("player", 3.5, 7)
  Spawn("box", 16.5, 4.5)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....^^.^=.......%===
=...%$@$$@##$#&@?#^.
.#$&$%.//%#&.$##8.#.
..#^^.#/=!%.^#^$.%%.
%i8i=#@@&@@##@%#$$$=
$=8%8=^/.#.=?.##^.$%
%$$.#%$=..==.?=#^%=%
=!%#!%./$.=%&%=@!=@%
%!.?$#=8$%##=.=.#/=8
....^&=!?.%#....#.=8
.%$^.?&/=/.....%=%.$
@@#%=!8=.&%&%#%##&%.
.$#=.#!%&.==.&#&..$?
.#!=#&$.&###%%#=&@=@
#%!=.8$.&.?=..$$%$$.
]])
  Spawn("player", 13.5, 10)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
