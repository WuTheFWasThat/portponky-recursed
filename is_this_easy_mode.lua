local metal = { ["7"] = "panel_ul", ["8"] = "panel_u", ["9"] = "panel_ur",
                ["4"] = "panel_l",  ["5"] = "panel_c", ["6"] = "panel_r",
                ["1"] = "panel_dl", ["2"] = "panel_d", ["3"] = "panel_dr",
                ["<"] = "panel_fs", [">"] = "panel_bs",
                E = "panel_k1", F = "panel_k2", B = "panel_k3",
                o = "block", ["="] = "girder_h", ["|"] = "girder_v",
                w = "warning", [":"] = "back", ["'"] = "back_d", ["-"] = "ledge" }

local black = { o = "black", ["<"] = "black_ul", [">"] = "black_ur",
                s = "black_s", ["-"] = "black_ledge" }

local crazy = { o = "black", ["-"] = "black_ledge",
                z = "glitch_tunnel", ["#"] = "glitch_check", ["?"] = "glitch_ugly",
                ["1"] = "glitch_static1", ["2"] = "glitch_static2", ["3"] = "glitch_static3",
                ["4"] = "glitch_static4", ["5"] = "glitch_static5" }
function start()
  ApplyTiles(metal, 0, 0, [[
91222222222223122234
6............|.....4
6............|.....4
6............|.....4
3wwwwwo......|.....4
9.....|......|.....4
6.....|......|.....4
6.....|......|.....4
3.....79.....owwo..1
9..oww13wwo..E.....7
6..................4
6..................4
6..................4
78888889788897888889
45555556455564555556
]])

  Spawn("player", 5, 7)
  Spawn("generic", 9.5, 8)
  Spawn("box", 15, 12)
  Spawn("yield", 15.5, 7)
  Global("chest", 4, 3, "start")
  Spawn("crystal", 16.5, 2.5)
end

function glitch()
    ApplyTiles(crazy, 0, 0, [[
5zo1#o34oooo53oo##o#
o4z5o#3oo?#2z34z5o13
##22o13o5?#oooo?oz1o
4?#oo4..#5#.z#?o45oz
z511.zo.4o.1o#.5?5#o
ozo...11?z..2o1..z1z
4o................#o
1#................zz
3z................3?
5?................#4
o5................o?
2o2ozoozoooooo2?o2oo
o5?o2z4ozzz#42z?4ooz
3o514331#1o3o2o3ooo#
z54o1oo44oozo45##5z4
]])
  Spawn("player", 10, 10)
end

function reject()
    ApplyTiles(black, 0, 0, [[
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oo................oo
oo................oo
oo................oo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
oooooooooooooooooooo
]])
  Spawn("key", 9, 8)
  Spawn("lock", 11.5, 7.5)
  Spawn("lock", 13.5, 7.5)
  Spawn("player", 4, 8)
  Spawn("diamond", 16, 7.5)
end

tiles = "tiles/city"
pattern = "backgrounds/tubes"
dark = { 0, 0, 0.05 }
light = { 0.05, 0.05, 0.1 }
