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
|......oo--oo......|
|......oo..oo......|
|......oooooo......|
|......oooooo......|
|....oooooooooo....|
|....oooooooooo....|
|..................|
|..................|
|..................|
|....oooooooooo....|
|....oooooooooo....|
oooooooooooooooooooo
]])

  Spawn("crystal", 10, 10.5)
  Spawn("lock", 5.5, 10.5)
  Spawn("lock", 7.5, 10.5)
  Spawn("lock", 12.5, 10.5)
  Spawn("lock", 14.5, 10.5)
  Spawn("key", 3, 13)
  Spawn("key", 17, 13)
  Spawn("player", 10, 4)
  Spawn("chest", 12, 2, "start")
  Spawn("box", 8, 2)
  Spawn("yield", 6, 6)
  Spawn("yield", 14, 6)
end


tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.14, 0.10, 0.12}, reject = {0.26, 0.19, 0.23} }
light = { start = {0.26, 0.19, 0.23}, reject = {0.4, 0.29, 0.35} }
