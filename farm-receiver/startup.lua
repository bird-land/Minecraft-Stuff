os.setComputerLabel(!!!!!)
rednet.open("left")

local listeningText = "Listening..."
rednet.broadcast(listeningText,"broadcast")

while true do
    print(listeningText)
    sendBroadcast(listeningText)
    id, message, protocol = rednet.receive()
    if protocol == "command" then
        print("Received command ",message,". Acknowledging...")
        sendAcknowledgement(id)
        print("Running...")
        shell.run(message,id)
    elseif protocol == "message" then
        printMessage(id,message)
        sendAcknowledgement(id)
    elseif protocol == "broadcast" then
        printBroadcast(id,message)
    end
end


