print('Welcome to Seeds.')
print(' ')
print(' ')

rednet.open("left")
-- Pick farming plot.


plot_table = unserialize("plot_data")
for i, plot in ipairs(plot_table) do
    print(i," Tier: ", plot[i]["tier"])
end



local finished = false
while finished == false do
    print("Select plot: ")
    selection = io.read()
    selection_num = tonumber(selection)
    if type(selection_num) ~= "number" then
        print("Selection must be a number.")
    elseif plot_table[selection_num] == nil then
        print("Select an available plot.")
    else
        selected_plot = plot_table[selection_num]
        print("Selected plot",selection_num)
        finished = true
    end
end


selection_id = selected_plot["cpu_id"]

-- Pick seeds.

sendCommand(selection_id, "sendFirstItemLists")

id, boolean = rednet.receive("acknowledgement")

id, first_item_lists = rednet.receive("table_data")

for i, each in ipairs(first_item_lists) do
    print(i,each[i]["name"])
end

finished = false
while finished == false do
    print("Select seed: ")
    selection = io.read()
    selection_seed = tonumber(selection)
    if type(selection_seed) ~= "number" then
        print("Selection must be a number.")
    elseif plot_table[selection_seed] == nil then
        print("Select an available seed.")
    else
        selected_seed = first_item_lists[selection_seed]
        print("Selected seed ",selected_seed["name"])
        finished = true
    end
end
