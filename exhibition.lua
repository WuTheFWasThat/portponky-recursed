-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
llm................k
9lm................k
llm................k
llm...........01111v
llm...............ab
llm...............kl
vvv112............kl
GH................uv
Q.................DE
Q...3SS456SSS456SS3O
Q...M0111111111112MO
QXXXMabcabbcabbcacMO
Q...MuvwuvvwuvvwuwMO
Q456MdabbcabbcabbcMa
bbbcMxuvvwuvvwuvvwMk
]])
  Spawn("player", 11.5, 9)
  Spawn("lock", 15.5, 1.5)
  Spawn("crystal", 17.5, 1.5)
  Global("box", 14.5, 8.5)
  Global("chest", 8.5, 8.5, "start")
  Global("key", 2.5, 12.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
###................#
###................#
###................#
###...........######
###...............##
###...............##
######............##
##................##
#.................##
#...#.............##
#...################
#@@@################
#...################
#...################
####################
]])
  Global("key", 2.5, 13.5)
  Global("chest", 8.5, 9.5, "reject")
  Global("box", 14.5, 9.5)
  Spawn("player", 11.5, 9)
  Spawn("lock", 15.5, 1.5)
  Spawn("diamond", 17.5, 1.5)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
