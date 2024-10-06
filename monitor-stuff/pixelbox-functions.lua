function horizontal_line(x1,xsz,y1,color,box)
	for i = x1, (x1+xsz) do
		box.canvas[i][y1] = color
	end
end
		
function vertical_line(x1,y1,ysz,color,box)
	for j = y1, (y1+ysz) do
		box.canvas[x1][j] = color
	end
end

function rect_filled(x1,y1,xsz,ysz,color,box)
	for i = x1, (x1+xsz) do
		for j = y1, (y1,ysz) do
			box.canvas[i][j] = color
		end
	end
end

function rect_empty(x1,y1,xsz,ysz,color,box)
	horizontal_line(x1,xsz,y1,color,box)
	horizontal_line(x1,xsz,(y1+ysz),color,box)
	vertical_line(x1,y1,ysz,color,box)
	vertical_line((x1+xsz),y1,ysz,color,box)
end

	
