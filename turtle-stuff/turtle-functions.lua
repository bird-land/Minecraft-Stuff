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
