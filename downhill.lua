-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
....................
3...................
bbc.................
llm................a
llm................k
vvwU...............k
bbbbbbbbbbc........k
llllllllllm........k
ll33lllljlm........k
abbbclllllm........k
kl9lmlllllm........k
klllmlllllmSSSSSSSSk
klllmlllabbbbbbbbbbb
klllmlllklllllllllll
klllmlllklllllllllll
]])
  Spawn("player", 5.25, 5)
  Spawn("chest", 8.75, 5.5, "roomA")
  Spawn("chest", 16.75, 11.5, "roomB")
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
8888888888888oq88888
8888888888888oq88888
8888888888888oq88888
8888888888888oq88888
8888888888888oq88888
8888888888888oq88888
EFFGR88888888oq88888
OPPQ888888888oq88888
OPPQ888888888oqabbbb
OPPQ888888888oqkllll
OPPQ888888888oqkltll
bbbc888888888oqkllll
lllm888888888oqkllll
lllmbbbbbbbbboqkllll
lllmllllllllloqkllll
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....................
....................
....................
....................
....................
....................
EFFGH...............
OPPQ................
OPPQ...........abbbb
OPPQ...........kllll
OPPQ...........kltll
bbbc...........kllll
lllm.........egkllll
lllmbbbbbbbbboqkllll
lllmllllllllloqkllll
]])
  end
  Spawn("player", 2.25, 5)
  Spawn("yield", 7.5, 12)
  Global("key", 17.5, 7.5)
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
GR888888888888888888
Q8888888888888888888
Q88888888888888888NE
Q888888888888888888O
Q888888888888888888O
Q011288888888888888O
12LL388888888888888O
Q888M888888a11c8888O
Q888M888888nlln8888O
Q888M888888nlln8888O
Q8883888888u11w8888O
Q8888888888abbbbbbbb
Q8888888888klllaclll
Q8888888888kll3uwlll
bbbbbbbbbbbbbbbbclll
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
GH..................
Q...................
Q.................DE
Q..................O
Q..................O
Q0112..............O
12LL3..............O
Q...M......a11ciiiiO
Q...M......nlln8888O
Q...M......nlln8888O
Q...3......u11w8888O
Q..........abbbbbbbb
Q..........klllaclll
Q..........kll3uwlll
bbbbbbbbbbbbbbbbclll
]])
  end
  Spawn("player", 12.5, 6)
  Spawn("box", 3, 4.5)
  Spawn("lock", 4.5, 12.5)
  Spawn("yield", 9, 13)
  Spawn("crystal", 2.5, 9)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
