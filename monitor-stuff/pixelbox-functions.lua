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
	divy = math.floor(box.width/8)
	divx = math.floor(box.height/2)
	
	rect_filled(0,0,divx,divy,colors.white,box)
