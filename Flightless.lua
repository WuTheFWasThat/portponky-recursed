-- Created with RecursedEditor

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.#................#.
55555555555555555555
KKKKKKKKKKKKKKKKKKKK
89abc3KKK789abc3KKK7
.tuv..456..tuv..456.
.tuv..456..tuv..456.
.tuv..456..tuv..456.
]])
  Spawn("player", 7.5, 8)
  -- Spawn("chest", 10, 8.5, "common")
  Spawn("chest", 10, 8.5, "threadless")
  Global("cauldron", 12.5, 8.5, "rootB")
end

function rootB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.I................I.
.#................#.
55555555555555555555
KKKKKKKKKKKKKKKKKKKK
3KKK789abc3KKK789abc
.456..tuv..456..tuv.
.456..tuv..456..tuv.
.456..tuv..456..tuv.
]])
  Spawn("player", 12.5, 8)
  Spawn("chest", 10, 8.5, "common")
  Global("cauldron", 7.5, 8.5, "start")
end

function common(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
K7...............3KK
6.................3K
6..................4
6..................4
6..................4
6..................4
6..................4
55556..............4
55556...........^..4
55556..........45555
55556..........45555
5555556........45555
5555556........45555
55555555555555555555
55555555555555555555
]])
  Spawn("player", 12, 12)
  Spawn("crystal", 3, 2.5)
end

-- to force cauldrons
-- idea: at end there are 2 locks and 1 key
--
-- idea: modify, no cauldrons, 1 green room and 1 green box, 1 normal box

function threadless(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVC..............BVV
VVC..............BVV
VVC..............BVV
VVC..............BVV
VVVVVVVVVVVVVVC..BVV
VVVVVVVVVVVVVVWWWWVV
VVVVVVVVVVVVVVC..BVV
VVVVVVVVVVVVVVC..BVV
VVVVVVVVVVVVVVWWWWVV
VVVVVVVVVVVVVVC..BVV
VVVVVVVVVVVVVVC..BVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
]])
  Spawn("player", 16, 11)
  Global("box", 8, 4)
  Spawn("cauldron", 12, 4, "threadlessB")
  Spawn("chest", 10, 4, "threadless_room")
end

function threadless_room(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VVVVVVVVVVVVVVVVVVVV
VC....BVC.........BV
VC....BVC.........BV
VC....BVC.........BV
VC..WWWVVVVVVVVC..BV
VC....BVC....BVC..BV
VC....BVC....BVC..BV
VC....BVC....BVC..BV
VWWW..BVC.BC.BVC..BV
VC....BVC.BC.BVC..BV
VC....BVC.BC.BVC..BV
VC....BVC.BC.BVC..BV
VC........BC......BV
VC........BC......BV
VWWWWWWWWWWWWWWWWWWV
]])
  Spawn("player", 5.5, 2)
  Spawn("ruby", 9.5, 2.5)
  Spawn("lock", 11.5, 2.5)
  Spawn("lock", 13, 2.5)
  Spawn("key", 14.5, 2)
end


function threadlessB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVC..............BVV
VVC..............BVV
VVC..............BVV
VVC..............BVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
VVVVVVVVVVVVVVVVVVVV
]])
  Spawn("player", 16, 4)
  Spawn("box", 8, 4)
  Spawn("cauldron", 12, 4, "threadless")
  Spawn("chest", 10, 4, "threadless_room")
end


tiles = "../communityDLC_beta/tiles/glacier_v2"
pattern = "../communityDLC_beta/backgrounds/frozen"
dark = {start = {0, 0.18, 0.36}, rootB = {0.22, 0.08, 0.08}, threadless= {0.68, 0.50, 0.68}}
light = {start = {0.24, 0.35, 0.48}, rootB = {0.44, 0.08, 0.05}, threadless = {0.9, 0.86, 0.41}}
