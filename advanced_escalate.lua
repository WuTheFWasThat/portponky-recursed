-- Automatically generated file

local tile_mapping = {["."]="empty", ["0"]="shroom1", ["1"]="shroom2", ["2"]="shroom3", ["3"]="box", ["4"]="ledge", ["5"]="monobox", ["6"]="pave", ["7"]="ceil", ["8"]="pillar", ["9"]="block_ul", ["a"]="block_u", ["b"]="block_ur", ["c"]="watersurface", ["d"]="block_l", ["e"]="block", ["f"]="block_r", ["g"]="water", ["h"]="buoyul", ["i"]="buoyu", ["j"]="buoyur", ["k"]="acidsurface", ["l"]="buoyl", ["m"]="buoyc", ["n"]="buoyr", ["o"]="acid", ["p"]="buoydl", ["q"]="buoyd", ["r"]="buoydr", ["s"]="acidledge", ["t"]="glitch", ["u"]="glitchd", ["v"]="glitchledge", ["w"]="glitchacidledge", ["x"]="char0", ["y"]="ledgend", ["z"]="char2", ["A"]="char3"}

function start(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
77777777777777777777
8..................8
8..................8
8..................8
8.............33...9
8..................d
8........5.........d
8..................d
8...5............9aa
b................dee
f................dee
f.......5........dee
f..............9aaaa
f1202101.......deeee
aaaab6666666666deeee
]])
  Spawn("player", 13.5, 13)
  Global("chest", 15, 3.5, "limbo")
end

function limbo(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
8ee87777777777777777
8ee8...............8
8ee8...............8
8ee8...............8
3773...............8
b..................8
f..................8
f............10....8
f............9aaaaaa
f.02.........deeeeee
aaab.........deeeeee
eeef.........deeeeee
eeef.......9aaaaaaaa
eeef.......deeeeeeee
eeef6666666deeeeeeee
]])
  Spawn("player", 6, 13)
  Spawn("yield", 9, 13)
  Spawn("chest", 16.5, 7.5, "lust")
end

function lust(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
77777777777777778ee8
8...............8ee8
8...............8ee8
b...............8ee8
f...............3773
f..................8
f..................8
f...102............8
aaaaaab............8
eeeeeef...........18
eeeeeef.........9aaa
eeeeeef20.......deee
eeee9aaab.......deee
eeeedeeef.......deee
eeeedeeefaaab666deee
]])
  Spawn("player", 14, 13)
  Spawn("chest", 3.5, 7.5, "final")
end

function reject(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
tttttttttttttttttttt
tt....t...........tt
tt....t...........tt
tt....t...........tt
tt....t...........tt
tt....ttttt.......tt
tt........t.......tt
tt........t.......tt
tt........t.......tt
tt........ttttt...tt
tt................tt
tt.....t..........tt
tt.....t..........tt
tt.....t..........tt
tttttttttttttttttttt
]])
  Spawn("player", 3.25, 13)
  Spawn("diamond", 9, 3)
  Global("fan", 4.75, 13.5)
  Spawn("generic", 10.5, 13.5)
end

function final(is_wet)
  ApplyTiles(tile_mapping, 0, 0, [[
f..............deeef
f..............deeef
f..............37773
f..................8
f..................8
f.10...............8
aaaaab.............8
eeeeef...........018
eeeeef...........9aa
eeeeef...........dee
eeeeef.........9aaaa
eeeeef.........deeee
eee9aaab.......deeee
eeedeeef.20....deeee
eeedeeef6666666deeee
]])
  Spawn("player", 13.5, 13)
  Spawn("crystal", 4.5, 1.5)
end

tiles = "tiles/outrun"
pattern = "backgrounds/void"
dark = { 0.04, 0.08, 0.12 }
light = { 0.06, 0.17, 0.21 }
