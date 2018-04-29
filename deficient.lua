-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
vvw...............uv
bcJ................a
lmK................k
lm.................k
vw...............U.u
c............abbbbca
m............kllltmk
m............klljlmk
w............uvvvvwu
c......abbbbcabbbbca
m......kllllmkllllmk
m......kll9lmkllllmk
wSTSSSSvvvvvwuvvvvwu
cabbbbcabbbbcabbbbca
mkllllmkllllmkllllmk
]])
  Spawn("player", 11, 8)
  Global("box", 9, 8.5)
  Global("chest", 16, 4.5, "roomA")
  Spawn("key", 4, 12.5)
end

function roomA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
LLLLLL3M...........M
3LLLLLL3...........M
M..................M
M.........abbcLL3..M
M.........kllm.....a
c...3LLLLLkllm.....n
m....3LLLLuvvw.....n
m..............a11cu
w..............nllna
H..............nllnn
DEFGH......a11cu11wn
.OPQ.......nllne55gu
.OPQ.......nllnrppra
SOPQ..U....u11wrpprn
cOPQabbbbbca11cy55An
]])
  Spawn("player", 9, 13)
  Spawn("lock", 16.5, 5.5)
  Spawn("yield", 2.5, 9)
  Spawn("crystal", 6, 3.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
####################
#..................#
#..................#
#..................#
##.....######.....##
##................##
##................##
##................##
###@@@##....########
###...##....########
###...##....########
########....########
####............####
####............####
####################
]])
  Spawn("lock", 8, 2.5)
  Global("key", 7, 7.5)
  Global("key", 13, 7.5)
  Spawn("player", 4.5, 10)
  Spawn("fan", 10, 13.5)
  Spawn("lock", 12, 2.5)
  Spawn("diamond", 10, 2.5)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
