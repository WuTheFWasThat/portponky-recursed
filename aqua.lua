-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="brick", ["1"]="brick_u", ["2"]="wall", ["3"]="brick_l", ["4"]="brick_r", ["5"]="brick_d", ["6"]="trim", ["7"]="chain_u", ["8"]="waterchain_u", ["9"]="pillar_u", ["a"]="waterpillar_u", ["b"]="chain_d", ["c"]="waterchain_d", ["d"]="pillar_d", ["e"]="waterpillar_d", ["f"]="bars", ["g"]="waterbars", ["h"]="glitchledge", ["i"]="water", ["j"]="watersurface", ["k"]="buoyul", ["l"]="buoyu", ["m"]="buoyur", ["n"]="glitch", ["o"]="buoyl", ["p"]="buoyc", ["q"]="buoyr", ["r"]="glitchd", ["s"]="buoydl", ["t"]="buoyd", ["u"]="buoydr", ["v"]="glitchsymbol"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
225fffff1221....5222
223434345225....3434
222222222221.....9..
222222222225.....d..
434134343434.....d..
2225.............d..
2221.............d..
2225.............d..
2221.............d..
2225.......666666666
2221.......343434343
2225.......122222222
22234343434522222222
22212222222122222222
22252222222522222222
]])
  Spawn("player", 8.75, 11)
  Spawn("key", 5.75, 11.5)
  Spawn("chest", 14.5, 8.5, "lock")
end

function lock(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
22222222221iiiiii122
22222222225iiiiii522
22234343421iiiiii122
2221iiii125iiiiii522
2225iiii521iiiiii122
2221iiii345iiiiii522
2225klllm34iiiiii122
2221stttu34iiiiii522
2225iiiiiiiiiiiii122
2221iiiiiiiiiiiii522
2225iiiiiiiiiiiii122
3434iiiii66666666522
ggg1iiiii13434343434
ggg50343452222222222
ggg12222222222222222
]])
  	Spawn("chest", 6, 5.5, "pool")
  else
    ApplyTiles(tile_mapping, 0, 0, [[
22222222221......122
22222222225......522
22234343421......122
2221....125......522
2225....521......122
2221....345......522
2225.....34......122
2221.....34......522
2225.............122
2221.............522
2225.............122
3434klllm66666666522
fff1stttu13434343434
fff50343452222222222
fff12222222222222222
]])
  	Spawn("chest", 6, 10.5, "pool")
  end
  Spawn("lock", 10, 9.5)
  Spawn("player", 14.5, 10)
end

function pool(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
..d.............1222
..d.............5222
..d.............1222
341jjjjjjjjjjj345222
225iiiiiiiiiii341222
221iiiiiii6666665222
225iiiiiii0343434343
221iiiiiii3434343434
225iiiiiiii343434343
226666iiiiiii0iiii9i
222221iiiiiiiiiiiiei
222225iiiiiiiiiiiiei
222221iiiiiiiiiiiiei
22222566666666666666
22222343434343434343
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
..d.............1222
..d.............5222
..d.............1222
341...........345222
225...........341222
221.......6666665222
225.......0343434343
221.......3434343434
225........343434343
226666.......0....9.
222221jjjjjjjjjjjjej
222225iiiiiiiiiiiiei
222221iiiiiiiiiiiiei
22222566666666666666
22222343434343434343
]])
  end
  Spawn("lock", 13.5, 11.5)
  Spawn("key", 4.75, 8.5)
  Spawn("player", 12, 4)
  Spawn("chest", 16, 12.5, "crystal")
end

function crystal(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
.d................52
.d................12
.d................52
.d.............klm12
jejjjjjjjjjjjjjstu52
666666iiiiiiiiiiii12
222221iiiiiiiiiiii52
222225iiiiiiiiiiii12
222221iiiiiiiiiiii52
222225iiiiiii34iii12
222221343434341iii52
222225iiaiiaii5iii12
222221iieiieii1iii52
222225iieiieii5iii12
222221iieiieii343452
]])
  	Spawn("box", 16.5, 2.5)
  else
    ApplyTiles(tile_mapping, 0, 0, [[
.d................52
.d................12
.d................52
.d................12
.d................52
666666............12
222221............52
222225............12
222221............52
222225.......34...12
222221343434341...52
222225..9..9..5...12
222221..d..d..1klm52
222225..d..d..5stu12
222221..d..d..343452
]])
  	Spawn("box", 16.5, 11.5)
  end
  Spawn("player", 8.25, 9)
  Spawn("crystal", 4.25, 1.25)
end

tiles = "tiles/castle"
pattern = "backgrounds/tubes"
dark = {0.06, 0.01, 0.09}
light = {0.17, 0.06, 0.18}
