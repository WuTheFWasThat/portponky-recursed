-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
..M..............M..
..M..............M..
..M..............M..
..M..............M..
..M..............M..
..M..............M..
..M.........01111111
..M..............M..
..M..............M..
..3..............3..
GEGEGEGEGEGEGEGEGEGE
QOQOQOQOQOQOQOQOQOQO
QOQOQOQOQOQOQOQOQOQO
QOQOQOQOQOQOQOQOQOQO
QOQOQOQOQOQOQOQOQOQO
]])
  Spawn("player", 9, 9)
  Spawn("lock", 12.5, 8.5)
  Spawn("chest", 15.5, 5.5, "roomA")
  Spawn("crystal", 15, 8.5)
  Global("box", 7, 9.5)
end

function roomA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
FGH.................
PQ..................
PQ..................
PQ..................
PQ...............DEG
PQ................OQ
bbbbbc............OQ
lllllm............OQ
lllllm............OQ
lllllm............OQ
lllllm.........abbbb
lllllmFFFFFFFFFkllll
lllllmPPPPPPPPPkllll
lllllmPPPPPPPPPkllll
]])
  Spawn("player", 4, 6)
  Spawn("key", 16.5, 10.5)
  Spawn("chest", 10.5, 11.5, "roomB")
end

function roomB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
...........n........
...........n........
...........n........
GH.........n........
Q..........n........
Q..........x....DEFG
Q................OPQ
Q................OPQ
Q................OPQ
Q....abbbbbdbbbbbbbb
Q....klllllndlllllll
cX...klllllnndllllll
m....kllllabbbbbbbbb
m....kllllklllllllll
mFFFFkllllklllllllll
]])
  Spawn("box", 18.5, 4.5)
  Spawn("lock", 11.5, 7.5)
  Spawn("key", 3, 13.5)
  Spawn("player", 6, 8)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
