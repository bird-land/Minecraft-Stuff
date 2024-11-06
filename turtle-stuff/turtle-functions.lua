function saveState()
  serialize(facing,orientation)
end

function turnRight()
  t.turnRight()
  if facing == 1 then
    facing = 2
  elseif facing == 2 then
    facing = 3
  elseif facing == 3 then
    facing = 4
  elseif facing == 4 then
    facing = 1
  end
end

function turnLeft()
  t.turnLeft()
  if facing == 1 then
    facing = 4
  elseif facing == 2 then
    facing = 1
  elseif facing == 3 then
    facing = 2
  elseif facing == 4 then
    facing = 3
  end
end

function turnAroundLeft()
  turnLeft()
  turnLeft()
end

function turnAroundRight()
  turnRight()
  turnRight()
end

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

   
function grabItems(count)
  for i = 1, count do
      t.suck()
  end
end
