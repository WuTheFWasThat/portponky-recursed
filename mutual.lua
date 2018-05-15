-- Created with RecursedEditor

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
46################46
46...........%....46
46...........=....46
46................46
46................46
46................46
46?????...........46
4655556...........46
4655556...........46
4655556...........46
4655556......^....46
4655556......4555546
46555564555564555546
46p55564555564555p46
46################46
]])
  Spawn("player", 10, 11)
  Global("chest", 15.5, 10.5, "roomA")
  Spawn("crystal", 4.5, 3)
end

function roomA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
46################46
46...........%....46
46...........=....46
46................46
46................46
46................46
46?????...........46
4655556...........46
4655556...........46
4655556...........46
4655556......^....46
4655556......4555546
46555564555564555546
46p55564555564555p46
46################46
]])
  Spawn("player", 4.5, 6)
  Spawn("box", 10, 11.5)
  Global("chest", 15.5, 10.5, "start")
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
hgi............fgggg
hg..............gggg
hg..............fggg
hg...............ggg
hg...............ggg
gg...............ggg
gg...............ggg
gg...............ghg
gg.............ggghg
ggggg......ggggggghg
gggggggeeeegggggghhg
gghhhgg....ggggggggg
ghhgggi....fgggggggg
ggggggeeeeeegggggggg
]])
  Spawn("player", 9, 12)
  Spawn("diamond", 4.5, 3.5)
  Spawn("chest", 13, 9.5, "rejectA")
end

function rejectA(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggi............fgggg
gg..............gggg
gg..............ghhg
gg..............ghhg
gg..............gggg
gg..............gggg
gggggg............fg
ggggfg.............g
gigg.g......gggg...g
g.gg.g......fggg...g
g.gi.geeeeeeeggg...g
g.g..g.......gig...g
g.f..g.......g.ggggg
g....g.......g.fgggg
]])
  Spawn("player", 4, 6)
  Global("chest", 17.5, 12.5, "rejectB")
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.ggggggggggggggggggg
.ghg..............gh
.ggg..............gg
.ghg..............gh
.fgi..............gg
ggg...............gh
ghg........ggg....gg
ggg........ghg....gh
ghg........ggg....gg
ggg........ghg....gh
ghg........ggggggggg
ggg........ghggggggh
ghg........ggggggggg
gggggggggggghggggggh
ghgggggggggggggggggg
]])
  Spawn("chest", 16, 9.5, "rejectA")
  Spawn("player", 6, 12)
  Spawn("fan", 9.5, 12.5)
end

tiles = "../communityDLC_beta/tiles/glacier_v2"
pattern = "../communityDLC_beta/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
