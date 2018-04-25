local wip = { o = "solid", ["-"] = "ledge", w = "water", a = "acid", b = "buoy" }

function start()
  ApplyTiles(wip, 0, 0, [[
oooooooooooooooooooo
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
o..................o
oooooooooooooooooooo
oooooooooooooooooooo
]])

  Spawn("player", 6, 12)
  Spawn("crystal", 14, 8.5)
end

