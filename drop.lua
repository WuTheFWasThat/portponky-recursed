-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="bannister_l", ["1"]="bannister_c", ["2"]="bannister_r", ["3"]="plank_top", ["4"]="carve_ul", ["5"]="carve_u", ["6"]="carve_ur", ["7"]="plank_v", ["8"]="carve_l", ["9"]="backing", ["a"]="carve_r", ["b"]="plank_bottom", ["c"]="plank_left", ["d"]="plank_h", ["e"]="plank_right", ["f"]="panel", ["g"]="ledge", ["h"]="rafter_u", ["i"]="rafter_d"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
3999i999i999i999i999
7cddddddddddddddddde
7......3...........3
7......7...........7
7......7...........7
7556...bgggggggcddde
799a...........f...3
b99a.........456...7
5555555556ggg89a...7
999999999a...89a...7
999999999a...89a...7
999999999a...cde...7
999999999a.........7
999999999a111112...b
999999999acddddefcde
]])
  Spawn("player", 1.75, 3)
  Global("chest", 5.25, 7.5, "start")
  Spawn("box", 17.75, 4.5)
  Spawn("crystal", 17.5, 6.75)
end

tiles = "tiles/wood"
pattern = "backgrounds/spooty"
dark = {0.02, 0.12, 0.04}
light = {0.04, 0.22, 0.12}
