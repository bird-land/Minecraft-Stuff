require "turtle-functions"

function moveToShelf(row,shelf)
    if currentRow < row then
        t.forward()
    elseif currentRow > row then
        t.back()
    elseif currentRow == row then
        turnLeft()
        t.forward()
        t.forward()
        t.forward()
    end
    if shelf == 1 then
        ;
    elseif shelf == 2 then
        t.up()
    elseif shelf == 3 then
        t.up()
        t.up()
    end
end

function returnToLane()
    t.down()
    t.down()
    t.down()
    t.back()
    t.back()
    t.back()
    turnRight()
end

sender_id = arg(1)
request_table = arg(2)

for i, each in ipairs(request_table) do
    moveToShelf(each["row"],each["shelf"])
    grabItems(each["count"])
    returnToLane()
end


