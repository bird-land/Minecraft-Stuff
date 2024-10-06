--[[
Builds stairs down as far as first argument. Places torches every 3 levels. Requires torches. 
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
	forceDown()
	t.turnLeft()
	t.dig()
	t.turnRight()
	forceForward()
	t.turnLeft()
	t.dig()
	t.turnRight()
	forceForward()
	t.turnLeft()
	t.dig()
	t.turnLeft()
	forceForward()
	t.turnRight()
	if layer % 3 == 0 then
		t.place()
	end
	t.turnRight()
end
 
 
for i = 0, n do
  mineLayer(i)
end
