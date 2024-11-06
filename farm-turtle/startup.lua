require "messaging-functions"

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
    elseif protocol == "retrieve" then
        print("Received retrieval request...")
        sendAcknowledgement(id)
        shell.run("retrieveItem",id,message)
    end
end