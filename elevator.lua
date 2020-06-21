-- Created with RecursedEditor

local tile_mapping = {["."]="empty", ["0"]="buoy_ul", ["1"]="buoy_u", ["2"]="buoy_ur", ["3"]="brick_ul", ["4"]="brick_l", ["5"]="brick_m", ["6"]="brick_r", ["7"]="brick_ur", ["8"]="pillar_ull", ["9"]="pillar_ul", ["a"]="pillar_u", ["b"]="pillar_ur", ["c"]="pillar_urr", ["d"]="ledge", ["e"]="ledge_x", ["f"]="black_l", ["g"]="black", ["h"]="black_hole", ["i"]="black_r", ["j"]="buoy_v_u", ["k"]="buoy_l", ["l"]="buoy_c", ["m"]="buoy_r", ["n"]="brick_ul_w", ["o"]="brick_dl", ["p"]="brick_dm", ["q"]="brick_dr", ["r"]="brick_ur_w", ["s"]="pillar_ull_w", ["t"]="pillar_l", ["u"]="pillar_m", ["v"]="pillar_r", ["w"]="pillar_urr_w", ["x"]="ledge_w", ["y"]="ledge_x_w", ["z"]="water_surface", ["A"]="water", ["B"]="cloud_l", ["C"]="cloud_r", ["D"]="buoy_v_c", ["E"]="buoy_dl", ["F"]="buoy_d", ["G"]="buoy_dr", ["H"]="brick_ul_a", ["I"]="line_v", ["J"]="line_h", ["K"]="brick_d", ["L"]="brick_ur_a", ["M"]="pillar_ull_a", ["N"]="crystal", ["O"]="diamond", ["P"]="ruby", ["Q"]="pillar_urr_a", ["R"]="ledge_a", ["S"]="ledge_x_a", ["T"]="acid_surface", ["U"]="acid", ["V"]="cloud", ["W"]="cloudledge", ["X"]="buoy_v_d", ["Y"]="buoy_h_l", ["Z"]="buoy_h_c", ["@"]="buoy_h_r", ["#"]="block", ["$"]="stalactite_many", ["%"]="stalactite_big", ["="]="stalactite_small", ["?"]="railing", ["!"]="railing_broken", ["^"]="stalagmite", ["&"]="glitch_tunnel", ["/"]="glitch_check", [":"]="glitch_static1", [";"]="glitch_static2", ["*"]="glitch_static3", ["+"]="glitch_static5", ["~"]="glitch_static4", ["-"]="glitch_ugly", ["_"]="crystal_hint", [","]="diamond_hint", ["("]="ruby_hint"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
....IKKKKKKKKKKKKKKK
....I............89a
....I.............tu
abc.I.......#J#...tu
uv..I.........I...tu
uvzz#zzzzzzzzzIzzztu
uv0ZZ@AAAAAAAAIAAAtu
uvDAAAAAAA4556IAAAtu
uvDAAAAAAA4556IAAAtu
uvEZZ@nKKKKKKKrAAAtu
uvAAAAAAAAAAAAAAAAtu
uvAAAAAAAAAAAAAAAAtu
uvAAAAAAAAA##AAAAA45
555556AAAAA##AAAAA45
55555555555555555555
]])
    Spawn("player", 4.5, 8)
    Spawn("box", 3, 5.5)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....IKKKKKKKKKKKKKKK
....I............89a
....I.............tu
abc.I.......#J#...tu
uv..I.........I...tu
uv..#.........I...tu
uv............I...tu
uv........4556I...tu
uv........4556I...tu
uv0ZZ@3KKKKKKK7...tu
uvD...............tu
uvD...............tu
uvEZZ@.....##zzzzz45
555556.....##AAAAA45
55555555555555555555
]])
    Spawn("player", 4.5, 11)
    Spawn("box", 3, 8.5)
  end
  Spawn("crystal", 2, 1.5)
  Global("chest", 9.5, 13.5, "start")
  Spawn("yield", 8, 8)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
ggggggggggggggg.....
ggggggggggggggg.....
ggggggggggggggg.....
ggggggggggggggg...gg
ggggggggggggggg...gg
ggggggggggggggg...gg
ggg...............gg
ggg...............gg
ggg...........geeegg
ggg...........g...gg
ggg...........g...gg
gggggggggeeeeegeeegg
ggggggggg.....g...gg
ggggggggg.....g...gg
gggggggggggggggggggg
]])
  Spawn("fan", 5, 10.5)
  Spawn("chest", 7, 10.5, "rejectB")
  Spawn("player", 16.5, 13)
  Spawn("diamond", 18, 1.5)
end

function rejectB(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
gggggggggggggggggggg
ggggg....gg....ggggg
ggggg....gg....ggggg
ggggge...gg...eggggg
ggggg.g......g.ggggg
g...g.g......g.g...g
g.....g......g.....g
g.....g......g.....g
g...gggg....ggeg...g
g...gggg....gggg...g
gg...gggggggggg...gg
gg...gggggggggg...gg
ggg...gggggggg...ggg
ggg...gggggggg...ggg
gggggggggggggggggggg
]])
  Spawn("player", 15.5, 13)
  Spawn("fan", 10, 9.5)
  Spawn("yield", 4.5, 13)
end

tiles = "../communityDLC_beta_v0.2/tiles/glacier_v2"
pattern = "../communityDLC_beta_v0.2/backgrounds/frozen"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }

