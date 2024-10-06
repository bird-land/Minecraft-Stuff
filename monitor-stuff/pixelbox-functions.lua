function horizontal_line(x1,xsz,y1,color,box)
	for i = x1, (x1+xsz) do
		box.canvas[y1][i] = color
	end
end
		
function vertical_line(x1,y1,ysz,color,box)
	for j = y1, (y1+ysz) do
		box.canvas[j][x1] = color
	end
end

function rect_filled(x1,y1,xsz,ysz,color,box)
	for i = x1, (x1+xsz) do
		for j = y1, (y1+ysz) do
			box.canvas[j][i] = color
		end
	end
end

function rect_empty(x1,y1,xsz,ysz,color,box)
	horizontal_line(x1,xsz,y1,color,box)
	horizontal_line(x1,xsz,(y1+ysz),color,box)
	vertical_line(x1,y1,ysz,color,box)
	vertical_line((x1+xsz),y1,ysz,color,box)
end

function test_monitor(box)
	divx = math.floor(box.width/8)
	divy = math.floor(box.height/2)
	
	rect_filled(0,0,divx,divy,colors.white,box)
	rect_filled(divx,0,divx,divy,colors.orange,box)
	rect_filled(divx*2,0,divx,divy,colors.magenta,box)
	rect_filled(divx*3,0,divx,divy,colors.lightBlue,box)
	rect_filled(divx*4,0,divx,divy,colors.yellow,box)
	rect_filled(divx*5,0,divx,divy,colors.lime,box)
	rect_filled(divx*6,0,divx,divy,colors.pink,box)
	rect_filled(divx*7,0,divx,divy,colors.gray,box)
	
	rect_filled(0,divy,divx,divy,colors.lightGray,box)
	rect_filled(divx,divy,divx,divy,colors.cyan,box)
	rect_filled(divx*2,divy,divx,divy,colors.purple,box)
	rect_filled(divx*3,divy,divx,divy,colors.blue,box)
	rect_filled(divx*4,divy,divx,divy,colors.brown,box)
	rect_filled(divx*5,divy,divx,divy,colors.green,box)
	rect_filled(divx*6,divy,divx,divy,colors.red,box)
	rect_filled(divx*7,divy,divx,divy,colors.black,box)
end
