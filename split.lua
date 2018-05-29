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
  Spawn("chest", 14, 13, "mainroom")
  Spawn("cauldron", 12, 13, "startB")
  Spawn("player", 10, 13)
end

function startB()
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
  Spawn("chest", 14, 13, "mainroom")
  Spawn("cauldron", 12, 13, "start")
  Spawn("player", 10, 13)
end


function mainroom()
  ApplyTiles(villa, 0, 0, [[
|..................|
|..................|
|......o....o......|
|......o....o......|
|......o....o......|
|......o....o......|
|......oooooo......|
|...oooooooooooo...|
|..................|
|..................|
|..................|
|oooooo..oo..oooooo|
|oooooo--..--oooooo|
|oooooo......oooooo|
oooooooooooooooooooo
]])

  Spawn("crystal", 10, 4)
  Spawn("lock", 4.5, 9.5)
  Spawn("lock", 15.5, 9.5)
  Spawn("key", 10, 10)
  Spawn("player", 10, 13)
  Spawn("chest", 12, 2, "start")
  Global("box", 2, 9)
  Global("box", 14, 5)
end


tiles = "tiles/villa"
pattern = "backgrounds/growth"
dark = { start = {0.14, 0.10, 0.12}, reject = {0.26, 0.19, 0.23} }
light = { start = {0.26, 0.19, 0.23}, reject = {0.4, 0.29, 0.35} }
