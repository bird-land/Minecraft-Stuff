function sendMessage(id,message)
    print("Sending message to ",id,"...")
    rednet.send(id,message,"message")
end

function sendCommand(id,command)
    print("Sending command to ",id,"...")
    rednet.send(id,command,"command")
end

function sendBroadcast(message)
    print("Broadcasting message...")
    rednet.broadcast(message,"broadcast")
end

function sendAcknowledgement(id)
    print("Acknowledging...")
    rednet.send(id,true,"acknowledgement")
end

function sendTableData(id,table)
    print("Sending table data...")
    rednet.send(id,table,"table_data")
end

function printMessage(id,message)
    print(id," Message: ",message)
end

function printBroadcast(id,broadcast)
    print(id," Broadcast: ",broadcast)
end

function printAcknowledgement(id)
    print (id, " acknowledged message.")
end

