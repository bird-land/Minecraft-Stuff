os.setComputerLabel(!!!!!)
rednet.open("left")

local listeningText = ("Farm receiver ",os.getComputerID()," AKA ",os.getComputerLabel(),"listening...")

rednet.broadcast(listeningText,"broadcast")

while true do
    print(listeningText)
    rednet.broadcast(listeningText,"broadcast")
    id, message, protocol = rednet.receive()
    if protocol == "command" then
        print("Received command ",message,". Acknowledging...")
        rednet.send(id,true,"acknowledgement")
        print("Running...")
        shell.run(command)
    elseif protocol == "message" then
        print("Received message from ", id,": ",message)
        rednet.send(id,true,"acknowledgement")
    elseif protocol == "broadcast" then
        print("Received broadcast: ",message)
    end
end


