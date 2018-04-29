-- Created with RecursedEditor

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_bridge", ["W"]="pillar_ull_a", ["X"]="water_ledge", ["Y"]="ledge", ["Z"]="acidr_ledge", ["@"]="pillar_urr_a", ["#"]="black_ledge_water", ["$"]="black_ledge_acid", ["%"]="black_ledge", ["="]="black", ["?"]="glitch_ugly", ["!"]="brick_l", ["^"]="brick_m", ["&"]="brick_r", ["/"]="glitch_tunnel", [":"]="glitch_check", [";"]="glitch_static1", ["*"]="glitch_static2", ["+"]="glitch_static3", ["~"]="glitch_static5", ["-"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
.............M.....M
.............M.....M
.............M.....M
.............M.....M
.............3.....M
...................M
...................M
FFFFGH.............3
PPPPQ........abbbbbb
PPPPQiiiiiiiikllllll
PPPPQ8888888acllllll
PPPPQ8888888kmlltlll
bbbbbbbbbbbbkmllllll
llllll3lllllkmllllll
bbbbbbbcllllkmllllll
]])
  Spawn("player", 2.25, 6)
  Spawn("chest", 3.5, 6.5, "stairs")
  Spawn("lock", 13.5, 6.5)
  Spawn("crystal", 16.5, 3.25)
end

function stairs(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
.....uwac88888888888
GH.....uwac888888888
Q........uwac8888888
Q...d......uwac88888
Q..Yx........uwac888
Q...d...d......uwac8
Q...u111w........uwa
11111112d...d......u
f555g...u111w......M
q...r.......d...d..M
q...B.......u111w..M
pfg......d.........M
ppq......n........3M
ppq3.....kbbbbbbbbbb
ppqabbbbblllllllllll
]])
    Spawn("player", 2, 10)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
.....uwac...........
GH.....uwac.........
Q........uwac.......
Q...d......uwac.....
Q..Yx........uwac...
Q...d...d......uwac.
Q...u111w........uwa
11111112d...d......u
........u111w......M
............d...d..M
............u111w..M
f555g....d.........M
q...r....n........3M
q..3B....kbbbbbbbbbb
pfgabbbbblllllllllll
]])
    Spawn("player", 2, 13)
  end
  Spawn("key", 2.5, 6.5)
  Global("box", 6.5, 5.5)
  Spawn("yield", 7, 13)
  Spawn("yield", 5.75, 13)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
