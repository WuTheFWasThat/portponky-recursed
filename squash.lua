-- Created with RecursedEditor

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
................4555
JJ#.............4555
..I.............3KKK
..I..............455
..I..............455
..I..............455
..I..............455
..I..............455
??#?????#TTTTTTT#455
55555556IUUUUUUUI455
55555556IUUUUUUUI455
55555556IUUUUUUUI455
55555556#UUHKLUU#455
56455555555555555555
56455555555555555555
]])
  Spawn("player", 5.5, 8)
  Spawn("chest", 12.5, 11.5, "roomA")
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
I..................I
I..................I
I..................I
ITTTTTTTTTTTTTTTTTTI
#######UU#UUUUUUUUU#
UUU4556UU#UUUUUU4555
UUU4556UU#UUUUUUoKKK
UUUHKKqUU#UUUUUUI012
UUU012UUUUUUUUUUIklm
UUUklmUUUUUUUUUUIEFG
UUUklmUUUUUUUUUUIUUU
UUUklm456UUUUUUU#UUU
UUUklm456UUUUUUUUUUU
556klm456UUUUUUUUUUU
556klm456RRRRRRRR455
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
I..................I
I..................I
I..................I
I..................I
#######..#.........#
...4556..#......4555
...4556..#......oKKK
...3KKq..#......I...
................I...
................I...
................I012
......456.......#klm
......456........EFG
556012456...........
556klm456dddddddd455
]])
  end
  Global("key", 16.75, 4.5)
  Spawn("player", 18.25, 4)
  Spawn("yield", 8.5, 10)
  Spawn("lock", 6.5, 9.5)
  Spawn("crystal", 1.5, 7)
  Spawn("box", 18.5, 13.5)
end

tiles = "../communityDLC_beta/tiles/glacier_v2"
pattern = "../communityDLC_beta/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }