id_recipient = arg[1]

all_names = getPeripheralNames()
names_cabled = getNamesCabled(all_names)
first_item_lists = getFirstItemLists(names_cabled)

sendTableData(id_recipient,first_item_lists)
