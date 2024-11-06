--[[
Strip mines a 2x3 door. First argument how long. Places torches every 5. Requires torches.
--]]
 
local args = {...}
 
local t = turtle
 
local n = args[1]
 
 
function forceForward()
  while not t.forward() do
    t.dig()
  end
end
 
function forceUp()
  while not t.up() do
    t.digUp()
  end
end
 
function forceDown()
  while not t.down() do
    t.digDown()
  end
end
 
function mineLayer(layer)
  if layer % 2 == 0 then
    forceForward()
    t.turnLeft()
    t.dig()
    forceUp()
    t.dig()
    if layer % 5 == 0 then
      t.place()
    end
    forceUp()
    t.dig()
    t.turnRight()
  else
    forceForward()
    t.turnLeft()
    t.dig()
    forceDown()
    t.dig()
    if layer % 5 == 0 then
      t.place()
    end
    forceDown()
    t.dig()
    t.turnRight()
  end
end
 
for i = 0, n do
  mineLayer(i)
end
