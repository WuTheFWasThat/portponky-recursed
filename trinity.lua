local metal = { ["7"] = "panel_ul", ["8"] = "panel_u", ["9"] = "panel_ur",
                ["4"] = "panel_l",  ["5"] = "panel_c", ["6"] = "panel_r",
                ["1"] = "panel_dl", ["2"] = "panel_d", ["3"] = "panel_dr",
                ["<"] = "panel_fs", [">"] = "panel_bs",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "block", ["="] = "girder_h", ["|"] = "girder_v",
                w = "warning", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }

function start()
  ApplyTiles(metal, 0, 0, [[
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|......oooooo......|
|......oooooo......|
|......oooooo......|
oooooooooooooooooooo
]])

  Spawn("crystal", 10, 3.3)
  Spawn("player", 10, 9)
  Global("chest", 15, 12, "block_room")
  Spawn("record", 5, 12, "sounds/voices/w1")
end

function block_room()
    ApplyTiles(metal, 0, 0, [[
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|.......ooooo......|
|...........o......|
|...........o......|
oooooooooooooooooooo
]])

  Global("chest", 15, 12, "key_room")
  Spawn("chest", 5, 12, "empty_room")
  Spawn("player", 10, 9)
  Spawn("lock", 7.5, 12.5)
  Spawn("box", 10, 13)
end

function key_room()
  ApplyTiles(metal, 0, 0, [[
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
oooooooooooooooooooo
]])

  Global("chest", 13, 12, "start")
  Spawn("player", 10, 12)
  -- Spawn("yield", 18, 8)
  -- Spawn("yield", 2, 5)
  Spawn("key", 7, 12)
end

function empty_room()
  ApplyTiles(metal, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 10, 10)
end

function reject()
  ApplyTiles(metal, 0, 0, [[
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|..................|
|.......oooo.......|
|..................|
|..................|
oooooooooooooooooooo
]])

  Spawn("diamond", 10, 4)
  Spawn("player", 5, 12)
  Spawn("lock", 7.5, 12.5)
  Spawn("lock", 12.5, 12.5)
  Spawn("chest", 15, 12, "reject")
end


tiles = "tiles/city"
pattern = "backgrounds/tubes"
dark = { 0.1, 0.02, 0.04 }
light = { 0.24, 0.07, 0.10 }


 --[[
==== solution ===
- go in right chest to block room
- go in right chest to key room
- bring out crystal room
- bring key room into crystal room
- bring key room into crystal room
- bring key room into block room
- get block
- bring empty room to other side, put crystal room in it
- exit, come back in
- bring crystal room out of empty
- bring empty room into crystal room
- go down, put block room into it
- go in block room
===== for regular crystal
- bring empty room into crystal room
- bring block room out
- go into block room, get block, go into crystal room (1st block)
- REPEAT trick:
- go into block room, get block
- go into crystal room, drop off block
- go into block room, get block, bring crystal room above ledge
- exit, take block,  exit
==== for paradox ===
- get block, bring empty room up
- put key room in empty room
- go in empty room
 - go in block room
 - go in empty room
 - put block room in key room
 - exit, exit -- OOPS! NEEDS MORE WORK

-- ]]
