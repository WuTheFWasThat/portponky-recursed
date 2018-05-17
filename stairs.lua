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
  Global("box", 8, 13)
end

function stairs()
  ApplyTiles(villa, 0, 0, [[
|..................|
|..................|
|.........ooooooooo|
|.........ooooooooo|
|.........ooooooooo|
|.........ooooooooo|
|......oooooooooooo|
|......oooooooooooo|
|......oooooooooooo|
|......oooooooooooo|
|...ooooooooooooooo|
|...ooooooooooooooo|
|...ooooooooooooooo|
|...ooooooooooooooo|
oooooooooooooooooooo
]])
  Spawn("player", 2, 13)
  Spawn("yield", 5, 9)
  Spawn("yield", 8, 5)
  Spawn("crystal", 15, 1)
end


tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.14, 0.10, 0.12}, reject = {0.26, 0.19, 0.23} }
light = { start = {0.26, 0.19, 0.23}, reject = {0.4, 0.29, 0.35} }
