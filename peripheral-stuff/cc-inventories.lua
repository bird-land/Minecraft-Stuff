function getPeripheralNames()
    local names = peripheral.getNames()
    return names
end

function getNamesCabled(names)
    cabledNames = {}
    for i, each in ipairs(names) do
        if (each == "front") then
            ;
        elseif (each == "back") then
            ;
        elseif (each == "left") then
            ;
        elseif (each == "right") then
            ;
        elseif (each == "top") then
            ;
        elseif (each == "bottom") then
            ;
        else
            table.insert(cabledNames, each)
        end
    end
    return cabledNames
end

function getFirstItemLists(invNames)
    firstItemLists = {}
    for i, each in ipairs(invNames) do
        temp = each.list()[1]
        if temp == nil then
            ;
        else
            table.insert(firstItemLists, temp)
        end
    end
    return firstItemLists
end

function getItemLists(invNames)
    itemLists = {}
    for i, each in ipairs(invNames) do
        temp = each.list()
        if temp == nil then
            ;
        else
            table.insert(itemLists, temp)
        end
    end
    return itemLists
end

