-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvvvvvvwk
m..................k
m..................k
m..................k
m..................k
m....d........d....k
m....n........n....k
m....n........n....k
mLLLLn........nLLLLk
m8888xiiiiiiiix8888k
m888888888888888888k
m888888888888888888k
w888888888888888888u
bbbbbbbbbbbbbbbbbbbb
lltlllllllllvvv9vvvv
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvvvvvvwk
m..................k
m..................k
m..................k
m..................k
m....d........d....k
m....n........n....k
m....n........n....k
mLLLLn........nLLLLk
m8888xiiiiiiiix8888k
m888888888888888888k
m888888888888888888k
w888888888888888888u
bbbbbbbbbbbbbbbbbbbb
lltllllllllllll9llll
]])
  end
  Spawn("player", 3, 7)
  Spawn("chest", 17, 12.5, "roomB")
  Global("chest", 3, 12.5, "crystal")
  Spawn("lock", 14.5, 11.5)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvvvvvvvk
m888888888888888888k
m888888888888888888k
m888888888888888888k
m888888888888888883k
m888888888888888302k
m8888888880111111111
m88888888abc8888888k
m88888888klm8888888k
m88888888uvw8888888k
bbbbc888888888NEGR8k
llllm8888888888OQ88k
llllm8888888888OQ88u
llllmbbbbbbbbbbbbbbb
ll9lmlljlllllllltlll
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvvvvvvvk
m..................k
m..................k
m..................k
m.................3k
m...............302k
miiiiiiiii0111111111
m88888888abc8888888k
m88888888klm8888888k
m88888888uvw8888888k
bbbbc888888888NEGR8k
llllm8888888888OQ88k
llllm8888888888OQ88u
llllmbbbbbbbbbbbbbbb
ll9lmlljlllllllltlll
]])
  end
  Spawn("player", 3, 9)
  Spawn("generic", 16, 9.5)
  Spawn("yield", 13, 12)
  Spawn("lock", 10.5, 11.5)
end

function crystal(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvk9mvvwk
m............uvw...k
m..................k
m..................k
m..................k
m............012XXXk
m..................k
bbc................k
llmiiiiiiiiiiiiiiiik
jlmbbc8888888888888k
llmllm8888888888888k
l9mllmbbc8888888888k
llmllmllm8888888888u
llmllmllmbbbbbbbbbbb
llmllmllmllllllltlll
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
muvvvvvvvvvvvk9mvvwk
m............uvw...k
m..................k
m..................k
m..................k
m............012XXXk
m..................k
bbc................k
llm................k
jlmbbc.............k
llmllm.............k
l9mllmbbc..........k
llmllmllm..........u
llmllmllmbbbbbbbbbbb
llmllmllmllllllltlll
]])
  end
  Spawn("player", 16, 12)
  Spawn("crystal", 17.5, 3.5)
  Spawn("key", 13, 12.5)
  Spawn("lock", 13.75, 3.5)
  Spawn("lock", 15.25, 3.5)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
%!?=?%###$?/=$==?#?/
?..=&=/!%=?=/##/!##?
=/..$=##!?/!%.%%###%
$.##=/$%?/=!^.%$?^##
%!#$%...&%^.....?=!=
.^%&?...#=.......%&/
$%?#.....=........%?
###!.........%$....$
/^!...!.....%=.....&
&...............#..?
?..............=^..?
?/!&..%##?!#/$!?#.%^
%=$?####$.../%!#%$$.
%##=?####=?^%..%=#%/
$=#/^$?%/?%$=#####=/
]])
  Spawn("player", 8, 10)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
####################
#..................#
#..................#
#..................#
#..................#
#....#........#....#
#....#........#....#
#....#........#....#
######........######
#....#........#....#
#..................#
#..................#
#..................#
####################
####################
]])
  Spawn("player", 17, 7)
  Spawn("diamond", 17, 11)
  Spawn("chest", 3, 12.5, "fake")
  Spawn("lock", 14.5, 11.5)
end

function fake(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
####################
#..................#
#..................#
#..................#
#..................#
#..................#
#..................#
#......###.........#
#......###.........#
#......###.........#
####............####
####............####
####............####
####################
####################
]])
  Spawn("lock", 7.75, 11.5)
  Spawn("lock", 9.25, 11.5)
  Spawn("player", 5.5, 12)
  Spawn("generic", 12, 12.5)
  Spawn("key", 14, 12.5)
  Spawn("yield", 17.5, 9)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
