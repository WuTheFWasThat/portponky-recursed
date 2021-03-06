local villa = { o = "stone", t = "stonetop", ["8"] = "stucco",
                ["7"] = "arch_l", ["9"] = "arch_r", ["1"] = "stonebottom_l", ["3"] = "stonebottom_r",
                ["|"] = "pillar",  ["T"] = "pillartop", ["/"] = "grasspillar",
                [">"] = "shadowtop_l", ["}"] = "shadow_l", ["<"] = "shadowtop_r", ["{"] = "shadow_r",
                ["x"] = "ivy_a", ["X"] = "ivy_b", ["+"] = "ivy_c",
                ["$"] = "hang_a", ["%"] = "hang_b", ["&"] = "hang_c",
                ["#"] = "bush_a", ["@"] = "bush_a",
                [","] = "grass_a", [":"] = "grass_b", [";"] = "grass_c",
                ["-"] = "ledge" }


function start()
  ApplyTiles(villa, 0, 0, [[
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

  Spawn("player", 10, 13)
  Spawn("chest", 12, 13, "stairs")
  Spawn("chest", 10, 13, "fan")
  Global("box", 8, 13)
end

function fan()
  ApplyTiles(villa, 0, 0, [[
|.....o...o...o....|
|.....o...o...o....|
|.....o...o...o....|
|..................|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...o...o...o...ooo|
|...............ooo|
|...............ooo|
|...............ooo|
oooooooooooooooooooo
]])
  Spawn("player", 2.5, 13)
  Spawn("yield", 6.5, 13)
  Spawn("yield", 10.5, 13)
  Spawn("yield", 14.5, 13)
  Spawn("diamond", 19, 2)
  Global("fan", 3, 13)
  Spawn("key", 4.5, 3.5)
  Spawn("key", 8.5, 3.5)
  Spawn("key", 12.5, 3.5)
  Spawn("lock", 4.5, 12.5)
  Spawn("lock", 8.5, 12.5)
  Spawn("lock", 12.5, 12.5)
  -- Spawn("lock", 16.5, 12.5)
end


function stairs()
  ApplyTiles(villa, 0, 0, [[
|oooooooooooooo....|
|oooooooooooooo....|
|ooooooooooo....ooo|
|ooooooooooo....ooo|
|oooooooo....o..ooo|
|oooooooo....o..ooo|
|ooooo....o..oooooo|
|ooooo....o..oooooo|
|oo....o..ooooooooo|
|oo....o..ooooooooo|
|...o..oooooooooooo|
|...o..oooooooooooo|
|...ooooooooooooooo|
|...ooooooooooooooo|
oooooooooooooooooooo
]])
  Spawn("player", 2, 13)
  Spawn("yield", 6, 11)
  Spawn("yield", 9, 9)
  Spawn("yield", 12, 7)
  Spawn("yield", 15, 5)
  Spawn("crystal", 17.5, 1)
end


tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.14, 0.10, 0.12}, reject = {0.26, 0.19, 0.23} }
light = { start = {0.26, 0.19, 0.23}, reject = {0.4, 0.29, 0.35} }
