id_recipient = arg[1]

all_names = getPeripheralNames()
names_cabled = getNamesCabled(all_names)
wrapped_boxes = wrapAll(names_cabled)
first_item_lists = getFirstItemLists(wrapped_boxesedit)

sendTableData(id_recipient,first_item_lists)
