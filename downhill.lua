local fall = { ["<"]="grass_l", ["="]="grass", [">"]="grass_r",
                 ["{"]="dirt_l", ["o"]="dirt", ["}"]="dirt_r",
                 ["1"]="depth_ul", ["2"]="depth_u", ["3"]="depth_ur",
                 ["4"]="depth_l", ["5"]="depth", ["6"]="depth_r",
                 ["/"]="lantern_ul", ["\\"]="lantern_ur", ["("]="lantern_dl",
                 [")"]="lantern_dr", ["["]="pillar_l1", ["]"]="pillar_r1",
                 [":"]="pillar_l2", [";"]="pillar_r2" }
local tree = { ["("]="trunk_l1", [")"]="trunk_r1", ["["]="trunk_l2", ["]"]="trunk_r2",
               ["l"]="trunk_branch_l", ["r"]="trunk_branch_r",
               ["-"]="branch_h", ["T"]="branch_t", ["L"]="branch_l",
               ["!"]="root_l1", ["?"]="root_l2", ["#"]="root_r1", ["$"]="root_r2",
               ["/"]="leaf_ul", ["^"]="leaf_u", ["\\"]="leaf_ur",
               ["<"]="leaf_l", ["o"]="leaf_c", [">"]="leaf_r",
               ["{"]="leaf_dl", ["_"]="leaf_d", ["}"]="leaf_dr",
               ["*"]="leaf_deco", ["y"]="leaf_branch_lu", ["+"]="leaf_branch_d",
               [":"]="leaf_branch_ld", [";"]="leaf_branch_rd",
               ["q"]="leaf_corner_dl", ["p"]="leaf_corner_dr",
               ["u"]="leaf_trunk_l", ["v"]="leaf_trunk_r",
               ["1"]="branch_leaf1", ["2"]="branch_leaf2" }

local water = { ["^"]="acid_s", ["w"]="acid", ["{"]="dirt_w_s",
                ["1"]="buoy_ul", ["2"]="buoy_u", ["3"]="buoy_ur",
                ["4"]="buoy_l", ["5"]="buoy", ["6"]="buoy_r" }
local fall_wet = { ["<"]="grass_l_w", ["="]="grass", [">"]="grass_r_w",
                     ["{"]="dirt_l_w", ["o"]="dirt", ["}"]="dirt_r_w",
                     ["1"]="depth_ul", ["2"]="depth_u", ["3"]="depth_ur",
                     ["4"]="depth_l", ["5"]="depth", ["6"]="depth_r",
                     ["/"]="lantern_ul_w", ["\\"]="lantern_ur_w", ["("]="lantern_dl_w",
                     [")"]="lantern_dr_w", ["["]="pillar_l1_w", ["]"]="pillar_r1_w",
                     [":"]="pillar_l2_w", [";"]="pillar_r2_w" }
local tree_wet = { ["("]="trunk_l1_w", [")"]="trunk_r1_w", ["["]="trunk_l2_w", ["]"]="trunk_r2_w",
                   ["l"]="trunk_branch_l", ["r"]="trunk_branch_r",
                   ["-"]="branch_h_w", ["T"]="branch_t_w", ["L"]="branch_l_w",
                   ["!"]="root_l1_w", ["?"]="root_l2_w", ["#"]="root_r1_w", ["$"]="root_r2_w",
                   ["/"]="leaf_ul_w", ["^"]="leaf_u_w", ["\\"]="leaf_ur_w",
                   ["<"]="leaf_l_w", ["o"]="leaf_c", [">"]="leaf_r_w",
                   ["{"]="leaf_dl_w", ["_"]="leaf_d_w", ["}"]="leaf_dr_w",
                   ["*"]="leaf_deco", ["y"]="leaf_branch_lu_w", ["+"]="leaf_branch_d_w",
                   [":"]="leaf_branch_ld_w", [";"]="leaf_branch_rd_w",
                   ["q"]="leaf_corner_dl", ["p"]="leaf_corner_dr",
                   ["u"]="leaf_trunk_l", ["v"]="leaf_trunk_r",
                   ["1"]="branch_leaf1_w", ["2"]="branch_leaf2_w" }


function start()
  ApplyTiles(fall, 0, 0, [[
>...................
}...................
=>..../\............
o}....()............
o}....[]............
o}....:;............
o}....[]............
o======>............
ooooooo}............
222223o}............
555556o}............
555556o}............
555556o}............
555556o}...<========
555556o}...{oooooooo
]])
  ApplyTiles(tree, 0, 0, [[
...........{q*op+_q*
............{__;T-:u
................./\[
.................{;(
...................l
...................(
...................[
...................(
...................[
...................(
...................[
...................(
.................!?l
]])
  ApplyTiles(water, 8, 12, [[
123
456
456
]])

  Spawn("player", 5.5, 6)
  Spawn("chest", 3.5, 6.5, "key")
  Spawn("chest", 15.5, 12.5, "box")
end

function box(wet)
  if wet then
    ApplyTiles(fall_wet, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
...../\.....<=>....<
.....().....{o=>...{
.....[].....{oo}...{
.....:;.....{ooo===o
.....[].....{o122222
============oo455555
222222222223oo455555
]])
    ApplyTiles(tree_wet, 0, 0, [[
o*p_+q*op}....{_++q*
v_;-T:__}.......LT:u
]..................[
)..................(
]..................[
r12y^^\............(
]..{q*>............[
)...{_}............(
]...................
)...................
]...................
)...................
r...................
]])
    ApplyTiles(water, 0, 0, [[
..........wwww......
.........wwwwwww....
.wwwwwwwwwwwwwwwwww.
.wwwwwwwwwwwwwwwwww.
.wwwwwwwwwwwwwwwwww.
.......wwwwwwwwwwww.
.ww....wwwwwwwwwwww.
.www...wwwwwwwwwwww.
.wwww..wwwww...wwww.
.wwww..wwwww....www.
.wwww..wwwww....www.
.wwww..wwwww........
...ww..wwwww........
....................
....................
]])
    ApplyTiles(tree_wet, 1, 12, [[
#$
]])
  else
    ApplyTiles(fall, 0, 0, [[
....................
....................
....................
....................
....................
....................
....................
....................
...../\.....<=>....<
.....().....{o=>...{
.....[].....{oo}...{
.....:;.....{ooo===o
.....[].....{o122222
============oo455555
222222222223oo455555
]])
    ApplyTiles(tree, 0, 0, [[
o*p_+q*op}....{_++q*
v_;-T:__}.......LT:u
]..................[
)..................(
]..................[
r12y^^\............(
]..{q*>............[
)...{_}............(
]...................
)...................
]...................
)...................
r#$.................
]])
    ApplyTiles(water, 16, 9, [[
^^^{
www.
]])
    ApplyTiles(fall_wet, 15, 9, [[
>....
}...{
]])
  end

  Spawn("player", 13, 7)
  Spawn("yield", 8.5, 12)
  Spawn("lock", 6, 11.5)
  Spawn("box", 5, 4.5)
  Spawn("crystal", 2.25, 7.75)
end

function key(wet)
  if wet then
    ApplyTiles(fall_wet, 0, 0, [[
>...................
}...................
o>..................
o}..................
o}..................
o}..................
o=====>.............
oooooo}.............
oooooo}.............
22223o}.............
55556o}.............
55556o}...........<=
55556o}...........{o
55556o========>...{o
55556ooooooooo}...{o
]])
    ApplyTiles(tree_wet, 10, 0, [[
{qo**ooo**
.{_q*p__qo
...{_;-T:u
.........[
.........(
.........[
.........(
.........[
.........(
.........[
.........(
]])
    ApplyTiles(water, 0, 0, [[
.wwwwwwwww..........
.wwwwwwwwww.........
..wwwwwwwwwww.......
..wwwwwwwwwwwww123w.
..wwwwwwwwwwwww456w.
..wwwwwwwwwwwww456w.
.......wwwwwwww456w.
.......wwwwwwww456w.
.......wwwwwwww456w.
.......wwwwwwww456w.
.......wwwwwwww456w.
.......wwwwwwww456..
.......wwwwwwww456..
...............456..
...............456..
]])
  else
    ApplyTiles(fall, 0, 0, [[
>...................
}...................
o>..................
o}..................
o}..................
o}..................
o=====>.............
oooooo}.............
oooooo}.............
22223o}.............
55556o}.............
55556o}...........<=
55556o}...........{o
55556o========>...{o
55556ooooooooo}...{o
]])
    ApplyTiles(tree, 10, 0, [[
{qo**ooo**
.{_q*p__qo
...{_;-T:u
.........[
.........(
.........[
.........(
.........[
.........(
.........[
.........(
]])
    ApplyTiles(water, 15, 9, [[
123
456
456
456
456
456
]])
  end

  Spawn("player", 5.5, 5)
  Spawn("yield", 11, 12)
  Global("key", 16.5, 8.5)
end


tiles = "../communityDLC_beta/tiles/fall"
pattern = "../communityDLC_beta/backgrounds/nature"
dark = { 0.76, 0.46, 0.24 }
light = { 0.86, 0.57, 0.31 }

