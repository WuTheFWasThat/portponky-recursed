local metal = { ["7"] = "panel_ul", ["8"] = "panel_u", ["9"] = "panel_ur",
                ["4"] = "panel_l",  ["5"] = "panel_c", ["6"] = "panel_r",
                ["1"] = "panel_dl", ["2"] = "panel_d", ["3"] = "panel_dr",
                ["<"] = "panel_fs", [">"] = "panel_bs",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "block", ["="] = "girder_h", ["|"] = "girder_v",
                w = "warning", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }

function start()
  ApplyTiles(metal, 0, 0, [[
:':|:'E======F79|':'
':'|'oo......o13|:':
:':|oo........oo|789
':'oo..........oo456
:'oo............o123
=oo..............oo=
6o................o4
6........ww........4
6o................o4
79o..............o79
13|o............o|13
7889o..........o7889
4556|o........o|4556
455679o......o794556
122313wwwwwwww131223
]])

  Spawn("player", 10, 12)
  Spawn("chest", 4, 9, "left_room")
  Spawn("chest", 16, 9, "right_room")
  Spawn("record", 10, 6, "sounds/voices/t5")
end

function left_room()
    ApplyTiles(metal, 0, 0, [[
45555556455645555556
45555556455645555556
1222222345F612222223
789.....4556.....789
123.....4556.....123
|.......1223.......|
|..................|
|..................|
|..................|
|.......7889.......|
|ww.....4556.....ww|
789.....4E56.....789
123wwwww4556wwwww123
':|:':|:4556'|':'|':
:'|':'|'4556:|:':|:'
]])

  Spawn("player", 5, 11)
  Spawn("lock", 9, 7.5)
  Spawn("lock", 11, 7.5)
  Spawn("box", 15, 11)
end

function right_room()
  ApplyTiles(metal, 0, 0, [[
4555556789=====78889
1222223456.....45556
|......123.....12223
|...........o......|
|...........|......|
|...........|......|
789----wwwwwwwwwwww|
456.....o..........|
456................|
123ww..............|
78889............ww|
45556o--o........789
45556|..|......ww456
45556|..|......79456
12223|..|78888913123
]])

  Spawn("player", 12, 12)
  Spawn("yield", 18, 8)
  Spawn("yield", 2, 5)
  Spawn("lock", 8.5, 9.5)
  Spawn("lock", 7.5, 4.5)
  Spawn("lock", 9.5, 4.5)
  Spawn("lock", 15.5, 4.5)
  Spawn("key", 16, 10)
  Spawn("crystal", 17.5, 4.5)
end

tiles = "tiles/city"
pattern = "backgrounds/tubes"
dark = { 0.1, 0.02, 0.04 }
light = { 0.24, 0.07, 0.10 }
