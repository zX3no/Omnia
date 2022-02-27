require "socket"

function sleep(sec)
    socket.select(nil, nil, sec)
end

print("Enter the time in seconds:")
t = io.read("*n")

sleep(t)