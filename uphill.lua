-- Automatically generated file
-- Made by QueuED

local tile_mapping = {["."]="empty", ["0"]="panel_ul", ["1"]="panel_u", ["2"]="panel_ur", ["3"]="panel_k1", ["4"]="panel_hint", ["5"]="panel_fs", ["6"]="panel_l", ["7"]="panel_c", ["8"]="panel_r", ["9"]="panel_k2", ["a"]="panel_bs", ["b"]="panel_dl", ["c"]="panel_d", ["d"]="panel_dr", ["e"]="panel_k3", ["f"]="block", ["g"]="girder_h", ["h"]="girder_v", ["i"]="warning", ["j"]="back", ["k"]="back_d", ["l"]="buoy", ["m"]="ledge", ["n"]="water", ["o"]="water_s", ["p"]="black", ["q"]="black_ul", ["r"]="black_ur", ["s"]="black_s", ["t"]="black_ledge", ["u"]="glitch_tunnel", ["v"]="glitch_check", ["w"]="glitch_ugly", ["x"]="glitch_static1", ["y"]="glitch_static2", ["z"]="glitch_static3", ["A"]="glitch_static5", ["B"]="glitch_static4"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
kfggggggggggggggggf6
khnnnnnlllnnnnnnnnh6
khnnnnnlllnnnnnnnnhb
khnnnnnlllnnnnnnnnh0
12nnnnnlllnnnnnnnnh6
38nnnnnlllnnnnnnnnh6
78ggggflllnnnnnnnnhb
cdnnnnhlllnnnnnnnnh0
12ggfgflllnnnnnnnnh6
78nnhnhlllnnnnnnnnh6
78nnhnhlllnnnnnnnnfb
cdnnhnhlllnnnnnnnn01
01112nhllliiiiiiii67
6779802lll011201126e
6777868lll67786778bc
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
kfggggggggggggggggf6
kh................h6
kh................hb
kh................h0
12................h6
38................h6
78ggggf...........hb
cd....h...........h0
12ggfgf...........h6
78..h.h...........h6
78..h.h...........fb
cd..h.hlll........01
01112.hllliiiiiiii67
6779802lll011201126e
6777868lll67786778bc
]])
  end
  Spawn("player", 3.75, 5)
  Spawn("yield", 12.5, 11)
  Global("chest", 15, 11.5, "pool")
  Spawn("crystal", 16, 2.5)
end

function pool(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
hfiiiiiiiiiiiiiiiifh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllnnnnnnnnnhh
hhnnnnlllfiiiinnnnhh
hhnnnnlllh0112nnnnhh
hhnnnnlllh6798nnnnhh
hfgggflllh6778nnnnhh
hhnnnhlllhbcc5112011
hfgggflllhjkj67786e7
hhnnnhlllhkjk6338677
hhnnnhlllhjkjbccdbcc
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
hfiiiiiiiiiiiiiiiifh
hh................hh
hh................hh
hh................hh
hh................hh
hh................hh
hh................hh
hh.......fiiiioooohh
hh.......h0112nnnnhh
hh.......h6798nnnnhh
hfgggflllh6778nnnnhh
hh...hlllhbcc5112011
hfgggflllhjkj67786e7
hh...hlllhkjk6338677
hh...hlllhjkjbccdbcc
]])
  end
  Spawn("player", 12, 6)
  Spawn("chest", 3.75, 9.5, "start")
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppppppppppp
pppppppppppppppppppp
ppppq............ppp
pppq.............ppp
ppq..............ppp
pp...............ppp
pp...............ppp
pp..........pppppppp
pp..........pppppppp
pp..........pssssppp
pptttttppppppppppppp
pp.....ppppppppppppp
pp.....ppppppppppppp
pppppppppppppppppppp
pppppppppppppppppppp
]])
  Spawn("chest", 14.25, 6.5, "stair")
  Spawn("player", 4.5, 12)
end

function stair(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppppppppppp
pp................pp
pp................pp
pp................pp
pp.....ppppppppppppp
pp..........ppsssppp
pp..........pppppppp
pp..........pppppppp
ppppppp..........ppp
ppppppp..........ppp
ppppppp..........ppp
ppqqqppppppp.....ppp
ppqqpppppppp.....ppp
pppppppppppp.....ppp
pppppppppppppppppppp
]])
  Spawn("key", 16.5, 3.5)
  Spawn("key", 14.75, 3.5)
  Spawn("player", 9.5, 10)
  Spawn("chest", 14.5, 13.5, "fan")
end

function fan(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
pppppppppppppppppppp
pppppppppppppppppppp
pppppp..........pppp
pppppp..........pppp
pppppp..........pppp
pppppp...pppppppppqp
pppppp...ppppppppqqp
pppppp...pppppppqpqp
pppppp...ppppppqqqqp
pppppp...pppppqpppqp
ppp......ppppqqppqqp
ppp......pppqpqpqpqp
ppp......ppqqqqqqqqp
pppppppppppppppppppp
pppppppppppppppppppp
]])
  Spawn("player", 4.5, 12)
  Spawn("lock", 10.25, 3.5)
  Spawn("lock", 11.75, 3.5)
  Spawn("diamond", 14.25, 3.5)
  Global("fan", 7.5, 12.5)
end

tiles = "tiles/city"
pattern = "backgrounds/tech"
dark = { 0.1, 0.02, 0.04 }
light = { 0.24, 0.07, 0.10 }
