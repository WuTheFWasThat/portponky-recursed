-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="panel_h_l", ["1"]="panel_h_c", ["2"]="panel_h_r", ["3"]="panel_s", ["4"]="buoy_h_l", ["5"]="buoy_h_c", ["6"]="buoy_h_r", ["7"]="buoy_s", ["8"]="water", ["9"]="panel_c_b", ["a"]="panel_ul", ["b"]="panel_u", ["c"]="panel_ur", ["d"]="panel_v_u", ["e"]="buoy_ul", ["f"]="buoy_u", ["g"]="buoy_ur", ["h"]="buoy_v_u", ["i"]="water_s", ["j"]="panel_c_s1", ["k"]="panel_l", ["l"]="panel_c", ["m"]="panel_r", ["n"]="panel_v_c", ["o"]="buoy_l", ["p"]="buoy_c", ["q"]="buoy_r", ["r"]="buoy_v_c", ["s"]="acid", ["t"]="panel_c_s2", ["u"]="panel_dl", ["v"]="panel_d", ["w"]="panel_dr", ["x"]="panel_v_d", ["y"]="buoy_dl", ["z"]="buoy_d", ["A"]="buoy_dr", ["B"]="buoy_v_d", ["C"]="acid_s", ["D"]="pillar_ull", ["E"]="pillar_ul", ["F"]="pillar_u", ["G"]="pillar_ur", ["H"]="pillar_urr", ["I"]="stalactite_many", ["J"]="stalactite_big", ["K"]="stalactite_small", ["L"]="line_h", ["M"]="line_v", ["N"]="pillar_ull_w", ["O"]="pillar_l", ["P"]="pillar_c", ["Q"]="pillar_r", ["R"]="pillar_urr_w", ["S"]="railing", ["T"]="railing_broken", ["U"]="stalagmite", ["V"]="pillar_ull_a", ["W"]="water_ledge", ["X"]="ledge", ["Y"]="acidr_ledge", ["Z"]="pillar_urr_a", ["@"]="black_ledge", ["#"]="black", ["$"]="glitch_ugly", ["%"]="glitch_tunnel", ["="]="glitch_check", ["?"]="glitch_static1", ["!"]="glitch_static2", ["^"]="glitch_static3", ["&"]="glitch_static5", ["/"]="glitch_static4"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
m..................k
mCCCCCabc..........k
msssssklm..........k
msssssuvw..........k
bbbbbbbbbbbbbbbbbbbb
llllllllllllllllllll
]])
  Spawn("player", 7.5, 9)
  Spawn("key", 3.5, 12.5)
  Spawn("chest", 12.5, 12.5, "roomA")
end

function roomA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
vvvvvvvvvvvvvvvvvvvv
m.........M........k
m.........M........k
mefffg....M........k
mopppq....M....effgk
mopppq....M....oppqk
mopppq....M....oppqk
myzzzA....3....yzzAk
meffffffffffffffffgk
moppppppppppppppppqk
moppppppppppppppppqk
myzzzzzzzzzzzzzzzzAk
mssssssssssssssssssk
mssssssssssssssssssk
mssssssssssssssssssk
]])
    Spawn("player", 3, 2)
    Spawn("yield", 13, 7)
    Spawn("generic", 17, 3.5)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
vvvvvvvvvvvvvvvvvvvv
m.........M........k
m.........M........k
m.........M........k
m.........M........k
m.........M........k
m.........M........k
mefffg....3........k
mopppq.........effgk
mopppq.........oppqk
mopppq.........oppqk
myzzzA.........yzzAk
meffffffffffffffffgk
moppppppppppppppppqk
moppppppppppppppppqk
]])
    Spawn("player", 3, 6)
    Spawn("yield", 13, 11)
    Spawn("generic", 17, 7.5)
  end
  Global("box", 5, 6.5)
  Global("chest", 9.5, 11.5, "roomB")
end

function roomB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
ssssna11111111cnssss
ssssnnssssssssnnssss
ssssnnssssssssnnssss
ssssnnssssssssnnssss
1111wnssss3LLLnnssss
1111cnssssssssnnssss
ssssnnssssssssnnssss
ssssnnssssssssnu1111
ssssnnssssssssna1111
ssssnnssssssssnnssss
ssssnnssssssssnnssss
ssssnnssssssssnnssss
ssssnnssssssssnnssss
ssssnnssssssssnnssss
ssssnu11111111wnssss
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....na11111111cn....
....nn........nn....
....nn........nn....
....nn........nn....
1111wn....3LLLnn....
1111cn........nn....
....nn........nn....
....nn........nu1111
....nn........na1111
....nn........nn....
....nn........nn....
....nn........nn....
....nn........nn....
CCCCnnCCCCCCCCnnCCCC
ssssnu11111111wnssss
]])
  end
  Spawn("crystal", 12.5, 2.5)
  Spawn("lock", 10.5, 2.5)
  Spawn("player", 8, 13)
end

function glitch(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
$..s!l.ll8&.8p#..#l.
#l$#.lp88.#llps$l^s.
lp8.#spsl$$ss?p8ssl.
#.ll#.ll.spps8..8.s/
lp8.8?8l##l..ll$pls.
..!.8l.sp$/.p.l?.#8l
lp.ll#.#.lp..lsp8pp.
s#$&.sl.ls#.^.sll##.
8llpp.#.l..ll#p.l!l#
l#$#..8!sl$#.....#p8
pls.$p....p.......p.
..lpl#$pl#p.......pl
#p88.8.8^pl......lsl
/$p?#ppp#..p.pll#l&s
.$pp#.8.s#.pl#..ss.8
]])
  Spawn("player", 13.5, 12)
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
##................##
##................##
##................##
##................##
##................##
##########........##
##.....###........##
##................##
##................##
##................##
##.....###........##
##########........##
####################
####################
####################
]])
  Spawn("player", 16.25, 11)
  Global("fan", 14, 11.5)
  Spawn("lock", 8.5, 8.5)
  Spawn("chest", 4.5, 4.5, "paradoxA")
  Spawn("chest", 4.5, 10.5, "paradoxB")
end

function paradoxA(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
####################
##................##
##................##
##CCCCCCCCCCCCCCCC##
##ssssssssssssssss##
###########s#sssss##
###########s#sssss##
##ssssssssss#sssss##
##ssssssssss########
##ssssssssss########
##ssssssssss########
##ssssssssss########
##########YY########
##########ss########
####################
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
####################
##................##
##................##
##................##
##................##
###########.#CCCCC##
###########.#sssss##
##..........#sssss##
##..........########
##..........########
##..........########
##..........########
##########@@########
##########..########
####################
]])
  end
  Spawn("yield", 3.25, 11)
  Spawn("player", 5, 11)
  Global("key", 3.25, 4.5)
  Global("key", 5, 4.5)
end

function paradoxB(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
ssss############ssss
ssss##ssssssss##ssss
ssss##ssssssss##ssss
ssss##ssssssss##ssss
##########ssss##ssss
######ssssssss##ssss
ssss##ssssssss##ssss
ssss##ssssssss######
ssss##ssssssss######
ssss##ssssssss##ssss
ssss##ssssssss##ssss
ssss##ssssssss##ssss
ssss##ssssssss##ssss
ssss##ssssssss##ssss
ssss############ssss
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
....############....
....##........##....
....##........##....
....##........##....
##########....##....
######........##....
....##........##....
....##........######
....##........######
....##........##....
....##........##....
....##........##....
....##........##....
CCCC##CCCCCCCC##CCCC
ssss############ssss
]])
  end
  Spawn("lock", 9.5, 2.5)
  Spawn("diamond", 7.5, 2.5)
  Spawn("player", 12, 13)
end

tiles = "tiles/glacier"
pattern = "backgrounds/icy"
dark = { 0, 0.18, 0.36 }
light = { 0.24, 0.35, 0.48 }
