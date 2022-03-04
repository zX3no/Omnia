function sleep(n)
  if n > 0 then os.execute("ping -n " .. tonumber(n+1) .. " localhost > NUL") end
end

io.write("Enter the time in seconds: ")
t = io.read("*n")

while t > 0 do 
    mins = math.floor(t / 60)
    secs = t % 60
    output = string.format("%02d:%02d\r", mins, secs)
    io.write(output)
    sleep(1)
    t = t - 1
end
