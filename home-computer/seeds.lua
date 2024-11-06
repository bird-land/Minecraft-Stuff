print('Welcome to Seeds.')
print(' ')
print(' ')

-- Pick farming plot.

plot_table = unserialize(plot_data)
for i, plot in ipairs(plot_table) do
    print(i," Tier: ", plot[i]["tier"])
end

selection = io.read()
selection_num = tonumber(selection)
selectionid = plot_table[selection_num]["cpu_id"]

-- Pick seeds.

sendCommand(selectionid, "sendFirstItemLists")

id, first_item_lists = rednet.receive("table_data")

print(first_item_lists["name"])
