-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
M..................M
M..................M
M..................M
M..................M
M..................M
3..................3
EGH..............DEG
OQ................OQ
OQ................OQ
OQ......DEGH......OQ
OQ.......OQ.......OQ
OQ.......OQ.......OQ
OQ.....acOQac.....OQ
OQDEGHalmOQklcDEGHOQ
OQ.OQallmOQkllcOQ.OQ
]])
  Spawn("player", 10, 8)
  Spawn("chest", 4, 12.5, "roomA")
  Spawn("chest", 16, 12.5, "roomB")
end

function roomA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
M........MM........M
M........MM........M
M........33........M
M.......DEGH.......M
M........OQ........M
M........OQ........M
M........OQ........M
M........OQ........M
M.....01111112.....M
3..................3
EGH..............DEG
OQ................OQ
OQDEGH01111112DEGHOQ
OQ.OQ.DEGHDEGH.OQ.OQ
OQ.OQ..OQ..OQ..OQ.OQ
]])
  Spawn("lock", 7, 10.5)
  Spawn("lock", 9, 10.5)
  Global("chest", 11, 11.5, "roomB")
  Spawn("generic", 7.5, 7.5)
  Spawn("player", 4, 11)
  Spawn("crystal", 14.5, 4)
  Spawn("lock", 13, 10.5)
end

function roomB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
M..................M
M..................M
M..................M
M..................3
M.............011111
M..............DEGH.
M...............OQ..
M...............OQ..
M...............OQ..
M...............OQ..
M....01111111112OQ..
M.....DEGH.DEGH.OQ..
3......OQ...OQ..OQ..
1111112OQ...OQ..OQ..
H.DEGH.OQ...OQ..OQ..
]])
  Spawn("player", 10.5, 9)
  Spawn("key", 17, 3.5)
  Spawn("box", 4, 12.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
#..................#
#..................#
#..................#
#..................#
#..................#
#..................#
#######............#
#######............#
#######............#
#######............#
#########@@@##.....#
#########...##.....#
#########...##.....#
#########@@@##.....#
#########...########
]])
  Spawn("player", 10.5, 11)
  Spawn("chest", 16.5, 13.5, "paradoxbox")
  Spawn("diamond", 4, 1.5)
end

function paradoxbox(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
####################
#..................#
#..................#
#..................#
#..................#
#..................#
#........#######@@@#
#........#######...#
#........###########
#........###########
#..................#
####...............#
####...............#
####################
####################
]])
  Spawn("key", 2.5, 10.5)
  Spawn("generic", 17.5, 7.5)
  Spawn("lock", 10.5, 11.5)
  Spawn("lock", 14.5, 11.5)
  Spawn("lock", 12.5, 11.5)
  Global("fan", 17.5, 12.5)
  Spawn("player", 6.5, 12)
  Spawn("yield", 5, 12)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
$=.?.!#!&%!.?#..$=%$
?=.^%$.#/&#=##$=?./$
.^%$..&=?.??./&?/##.
^.%.!.&&..&$^%!.&=##
?/!.==?%&!.#$.$^#?.%
.?#=&?$.&$##%=...^?&
/#=?$?==?$.$=./#..$?
^%$=%#.%%^.=..#%%=?$
.##%====%=$^!##^.$%$
.?!?#$.$/^===&.#%..$
//$?=&%$&=?.%..#...#
=!.#$#?&%==$?%&....#
?.#%=!##$%.!^%?....^
^!#$=&.^!&/%$$$$?%%!
%.$$?&./%/$&!^=..#.!
]])
  Spawn("player", 18, 12)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
