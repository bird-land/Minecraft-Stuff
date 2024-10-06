local t = turtle
 
local xdim = arg[1]
local ydim = arg[2]
local zdim = arg[3]
 
 
 
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
 
state = 1
turn = 2	
 
function mine(n1, n2, n3)
	x = 0
	y = 1
	z = 0
 
	dim1 = tonumber(n1)
	dim2 = tonumber(n2)
	dim3 = tonumber(n3)
 
	while not (z == dim3) do
		if (state == 1) and (x == dim1) then
			state = 2
			x = 0
		elseif (state == 1) then
			forceForward()
			x = x + 1
		elseif (state == 2) and (z == dim3) then
 
		elseif (state == 2) and (y == dim2) then
			forceUp()
			t.turnLeft()
			t.turnLeft()
			x = x + 1
			y = 1
			z = z + 1
			state = 1
		elseif (state == 2) then
			if (turn == 2) then
				t.turnRight()
				forceForward()
				t.turnRight()
				x = x + 1
				y = y + 1
				state = 1
				turn = 1
			elseif (turn == 1) then
				t.turnLeft()
				forceForward()
				t.turnLeft()
				x = x + 1
				y = y + 1
				state = 1
				turn = 2
			end
		end
	end
end	
mine(xdim,ydim,zdim)
