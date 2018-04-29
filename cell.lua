-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
m0112ssssssssssxsssk
msssMssssssssss0112k
msssMsssssssssshsssk
msssMssssssssssrsssk
ms012ssssssssssrsssk
mssssssssssssssB012k
mssssssssssssssssssk
mssssssssssssssssssk
m0112ssssssssssssssk
mssssssssssssss0112k
mssssssssssssssssssk
mssssssssssssssssssk
mabbbbbbbbcssssssssk
mkllltllllmssabbbbck
mkllllllllmackljllmk
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
m0112..........x...k
m...M..........0112k
m...M..............k
m...M..............k
m.012..............k
m..............h012k
m..............r...k
m..............r...k
m0112..........B...k
m..............0112k
m..................k
m..................k
mabbbbbbbbc........k
mkllltllllmCCabbbbck
mkllllllllmackljllmk
]])
  end
  Spawn("player", 2.5, 3)
  Global("chest", 2.5, 11.5, "start")
  Global("chest", 17.5, 12.5, "start")
  Spawn("key", 2.5, 7.5)
  Spawn("lock", 15.5, 11.5)
  Spawn("lock", 4.5, 10.5)
  Spawn("crystal", 17.5, 3.5)
  Global("box", 17.5, 8.5)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
##.....#.....#.....#
##.....#.....#.....#
####################
##.....#...........#
##.....#...........#
##.....#...........#
##.....#...........#
##.....#...........#
##...........#.....#
##...........#.....#
##...........#.....#
##...........#.....#
##...........#.....#
########@@@@@#######
##.....#.....#.....#
]])
  Spawn("diamond", 16.5, 10.5)
  Spawn("player", 10.5, 11)
  Spawn("chest", 3.5, 12.5, "rejectA")
  Spawn("chest", 5.5, 12.5, "rejectB")
  Global("generic", 7.5, 12.25)
end

function rejectB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
####################
###s#####s#####s####
##sss###sss###sss###
#sssss#sssss#sssss#s
#sssss#sssss#sssss#s
#sssss#sssss#sssss#s
#sssss#sssss#sssss#s
#############s###s##
#sssss#sssss#sssss#s
#sssssssssssssssss#s
#sssssssssssssssss#s
#sssssssssssssssss#s
#sssss#sssss#sssss#s
####################
####################
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
####################
###.#####.#####.####
##...###...###...###
#.....#.....#.....#.
#.....#.....#.....#.
#.....#.....#.....#.
#.....#.....#.....#.
#############.###.##
#.....#.....#.....#.
#.................#.
#.................#.
#.................#.
#.....#.....#.....#.
####################
####################
]])
  end
  Spawn("player", 3.5, 12)
  Spawn("lock", 12.5, 10.5)
  Spawn("key", 9.5, 12.5)
  Spawn("yield", 15.5, 6)
end

function rejectA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
####################
####s#####s#####s###
###sss###sss###sss##
s#sssss#sssss#sssss#
s#sssss#sssss#sssss#
s#sssss#sssss#sssss#
s#sssss#sssss#sssss#
####################
s#sssss#sssss#sssss#
s#sssssssssssssssss#
s#sssssssssssssssss#
s#sssssssssssssssss#
s#sssss#sssss#sssss#
####################
####################
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
####################
####.#####.#####.###
###...###...###...##
.#.....#.....#.....#
.#.....#.....#.....#
.#.....#.....#.....#
.#.....#.....#.....#
####################
.#.....#.....#.....#
.#.................#
.#.................#
.#.................#
.#.....#.....#.....#
####################
####################
]])
  end
  Spawn("fan", 10.5, 12.5)
  Global("box", 4.5, 12.5)
  Spawn("lock", 7.5, 10.5)
  Spawn("lock", 13.5, 10.5)
  Spawn("player", 16.5, 12)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
...%.!!?.%..#.?=%..$
.$$%.%..!?=.==?%.$%$
!$.?$.=.%%&=.&#&.%$=
$=.!$..$.!.?!==&.=&&
/^?.!..$..%==$..&==$
%=%==&=!$^!!%=&.====
.=.%^#.....#!..^.../
=??&$?..#$.#.^%^....
&==%#.=^%?.#=.=/$.$.
!!.^..^=.&&../.?=$.$
.^#$....!&!^..?%==$.
##^^^....$#=..%=#.$=
=%%?%/....$#$!$%=^%.
$.%%.%...%.=!#=%=.$.
/./%$.=%%%.=.#.!$===
]])
  Spawn("player", 7.5, 13)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
