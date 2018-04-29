-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="brick", ["1"]="brick_u", ["2"]="wall", ["3"]="brick_l", ["4"]="brick_r", ["5"]="brick_d", ["6"]="trim", ["7"]="chain_u", ["8"]="waterchain_u", ["9"]="pillar_u", ["a"]="waterpillar_u", ["b"]="chain_d", ["c"]="waterchain_d", ["d"]="pillar_d", ["e"]="waterpillar_d", ["f"]="bars", ["g"]="waterbars", ["h"]="glitchledge", ["i"]="water", ["j"]="watersurface", ["k"]="buoyul", ["l"]="buoyu", ["m"]="buoyur", ["n"]="glitch", ["o"]="buoyl", ["p"]="buoyc", ["q"]="buoyr", ["r"]="glitchd", ["s"]="buoydl", ["t"]="buoyd", ["u"]="buoydr", ["v"]="glitchsymbol"}

function start(is_wet)
  if is_wet then
    ApplyTiles(tile_mapping, 0, 0, [[
eiiiiiiii8ii52222222
eiiiiiiii8ii12222222
eiiiiiiii8ii53434343
eiiiiiiii8iikmiiiiia
eiiiiiiiiciioqiiiiie
434iiii34iiioqiiiiie
221iiiiiiiiisu134343
225iiiiiiiiiii522222
221iiiiiiiiiii122222
225iiiiiiiiiii522222
221iiiiiiiiiii122222
225666661iiiii522222
221222225iiiii122222
225222221iiiii522222
22122222534343422222
]])
  else
    ApplyTiles(tile_mapping, 0, 0, [[
d......oq7..52222222
d......oq7..12222222
d......oq7..53434343
d......oq7.........9
d......sub.........d
434....34..........d
221...........134343
225...........522222
221...........122222
225...........522222
221.........km122222
225666661jjjoq522222
221222225iiioq122222
225222221iiisu522222
22122222534343422222
]])
  end
  Spawn("player", 4.5, 10)
  Spawn("crystal", 15, 4.5)
  Global("chest", 7.6, 10.5, "start")
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnr...............nn
nn................nn
nn................nn
nn................nn
nn...nn......nn...nn
nn...nn......nn...nn
nn...nn......nn...nn
nn...nnnnnnnnnn...nn
nn...nnnnnnnnnn...nn
nn...nnnvnnvnnn...nn
nn...nnnnnnnnnn...nn
nn...nnnnnnnnnn...nn
nnnnnnnnnnnnnnnnnnnn
nnnnnnnnnnnnnnnnnnnn
]])
  Spawn("player", 8.8, 7)
  Spawn("chest", 3.5, 12.5, "jaaaam")
  Global("chest", 16.5, 12.5, "jaaaam")
  Spawn("record", 11.6, 7.5, "sounds/voices/d8r")
end

function jaaaam(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
nnnnnnnnnnnnnnnnnnnn
nnnnr.......nnnnnnnn
nnnn........nnnnnnnn
nnnn........nnnnvnnn
nnnn........nnnnnnnn
nnnnnnnnnnn.nnvnnnnn
nnnnnnnnnnn.nnnnnnnn
nnnnnnnnnnn.nnnnnnnn
nn................nn
nn................nn
nn................nn
nn....nnnnnnnnnnnnnn
nn....nnnnnnnnnnnnnn
nn....nnnnnnnnnnnnnn
nnnnnnnnnnnnnnnnnnnn
]])
  Spawn("player", 4, 13)
  Spawn("lock", 12.75, 9.5)
  Spawn("lock", 14.25, 9.5)
  Spawn("diamond", 16.5, 9.5)
  Spawn("fan", 8, 10.5)
  Spawn("key", 8, 4.5)
end

tiles = "tiles/castle"
pattern = "backgrounds/tubes"
dark = {0.06, 0.01, 0.09}
light = {0.17, 0.06, 0.18}
